const { user }  = require('../');
const jwt = require('jsonwebtoken');
const hash = require('object-hash');
require('dotenv').config();



async function signup(res, data)
{
    const cek = await user.findOne({
        where:{email:data.email}
    });

    if(cek)
    {
        res.status(500).json({pesan : "Wrong email"});
    } else {
        
        user.create(data).then(() => {
            res.status(200).json({pesan:"anda berhasil signup. silahkan login"})
        }).catch((err) => {
            res.status(500).json({pesan:"ups, there is something wrong", error:err})
        });
    }
}


async function signin(res, data)
{
   
    const cek = await user.findOne({
        where:{email:data.email, isDeleted: false}
    });

    console.log(`cek : ${cek}`);

    if(cek)
    {
        if(hash({password:data.password}) === cek.password)
        {
            //mengenkripsi token key
            const encryptKey = hash({jwt_key:process.env.jwt_key});

            //membuat json web token
            jwt.sign({
                uid : cek.id,
                username : cek.username,
                email : cek.email
            }, encryptKey, (err, token) => {
                res.status(200).json({pesan : "Anda berhasil login. enjoy :)", token});
            })
            
        } else {
            res.status(500).json({
                pesan : "password anda salah. silahkan cek kembali password yang anda inputkan" 
            })
        }
    } else {
        res.status(500).json({
            pesan : 'email anda belom terdaftar. silahkan lakukan signup terlebih dahulu'
        })
    }
}

module.exports = {signin, signup};