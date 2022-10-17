const { contact } = require('../');

function create(res, data)
{
    contact.create(data).then((result) => {
        res.status(200).json({
            pesan : 'berhasil menambah data',
            status : 200
        });
    }).catch((err) => {
        res.status(500).json(err);
    });
}

function getById(res, id)
{
    contact.findAll({
        where: {id, isDeleted:false}
    }).then((data) => {
        res.status(200).json([
            {
                pesan : "Berhasil mengambil data berdasarkan id",
                status : 200
            }, {data}
     ])
    }).catch((err) => {
        res.status(500).json({
            pesan : 'Data gagal di dapatkan',
            status : 500,
            error : err
        })
    });
}

function getAll(res)
{
    contact.findAll({
        where:{isDeleted:false}
    }).then((data) => {
        res.status(200).json({data})
    }).catch((err) => {
        res.status(500).json({
            pesan : 'Data gagal di dapatkan',
            status : 500,
            error : err
        })
    })
}

function update(res, id, data)
{
    contact.update(data, {where:{id}}).then((result) => {
        res.status(200).json({
            pesan : 'update data berhasil',
            status : 200
        });
    }).catch((err) => {
        res.status(500).json({
            pesan : 'hapus data gagal',
            status : 500
        });
    });
}


function destroy(res, id, data)
{
    contact.update(data, {where:{id}}).then((user) => {
        res.status(200).json({
            pesan : 'hapus data berhasil',
            status : 200
        })
    }).catch((err) => {
        res.status(500).json({
            pesan : 'hapus data gagal',
            status : 500
        });
    });
}

module.exports =
{create,
getById, getAll,
update, destroy};
