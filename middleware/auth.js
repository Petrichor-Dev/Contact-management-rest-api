const jwt = require('jsonwebtoken');
const hash = require('object-hash');
require('dotenv').config();

// eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjIsInVzZXJuYW1lIjoiYW5kaWsgZmlybWFuc3lhaCIsImVtYWlsIjoiYW5kaWtAZ21haWwuY29tIiwiaWF0IjoxNjU2MzE5ODgzfQ.VDqF8j895S1Ni4Q39f5LlC0oizXFIhKEoHUUE19ImDw

function auth(req, res, next)
{
    //mengambil token yang di kirimkan user 
    const token = req.headers.authorization.split(' ')[1];

    if(!token)
    {
        res.status(500).json({pesan:"anda lupa memasukkan token"})
    }

    else {
       //mengenkripsi token key
       const jwt_key = hash({jwt_key:process.env.jwt_key});

       jwt.verify(token, jwt_key, (err, user) => {
           if(err) 
           {
               res.status(500).json({pesan:"tokenmu salah"});
           }
           
       }); 
    }

    next(); 
    
}

module.exports = auth;