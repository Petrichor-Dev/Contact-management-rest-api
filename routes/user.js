const express = require('express');
const { route } = require('./contact');
const router = express.Router();
const hash = require('object-hash');


const { signin, signup } = require('../models/myModels/user');

router.post('/signup', (req, res) => {
    const data = {
        username: req.body.username,
        email: req.body.email,
        password: hash({password:req.body.password}),
        nama: req.body.email,
        noHp: req.body.noHp,
        bio: req.body.bio,
        propict: req.body.propict,
        isDeleted: false
    }

    signup(res, data);
});

router.post('/signin', (req, res) => {
    const data = {
        email : req.body.email,
        password : req.body.password
    }
    signin(res, data);
});


// router.delete('/', (req, res, next) => {
//     res.send('next');
// });

// router.get('/:any', (req, res) => {
//     res.status(500).json({pesan: `halaman (${req.params.any}) yang anda cari tidak di temukan`});
// });

module.exports = router;
