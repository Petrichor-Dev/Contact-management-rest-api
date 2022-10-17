const express = require('express');
const router = express.Router();
const { create, getById, getAll, update, destroy } = require('../models/myModels/contact');

const auth = require('../middleware/auth');

//controller ini harus di letakkan sebelum get('/:any'). kalo enggak dia ga bakal bisa di panggil
router.get('/gg/:id', (req, res) => {
    res.set('Access-Control-Allow-Origin', '*');
    // getAll(res);
    getById(res, req.params.id);
});

//read
router.get('/:id', auth, (req, res) =>  {
    getById(res, req.params.id);
});

router.get('/', auth, (req, res) => {
    getAll(res);
});



//create
router.post('/', auth, (req, res) => {
    const data = {
        nama : req.body.nama,
        noHp : req.body.noHp,
        email : req.body.email,
        propict : req.body.propict,
        createBy : null,
        updatedBy : null,
        deletedBy : null,
        deletedAt : new Date(),
        isDeleted : false,
        createAt : new Date(),
        updateAt : new Date()
    }

    create(res, data);
});

//update
router.patch('/:id', auth, (req, res) => {
    const data = {
        nama : req.body.nama,
        noHp : req.body.noHp,
        email : req.body.email,
        propict : req.body.propict,
        updatedBy : null
    }

    update(res, req.params.id, data);
});

//delete
router.delete('/:id', auth, (req, res) => {
    const data = {
        deletedBy : null,
        deletedAt : new Date(),
        isDeleted : true
    }
    destroy(res, req.params.id, data);
});

module.exports = router;
