var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');

router.get('/', async function (req, res, next) {

    var novedades = await novedadesModel.getNovedades();

    res.render('admin/novedades', {
        layout: 'admin/layout',
        usuario: req.session.nombre,
        novedades
    });
});

// elimina novedades
router.get('/eliminar/:id', async (req, res, next) => {
    var id = req.params.id;

    await novedadesModel.deleteNovedadById(id);
    res.redirect('/admin/novedades')

});


// muestra vista de Agregar Novedades
router.get('/agregar', (req, res, next) => {

    res.render('admin/agregar', {
        layout: 'admin/layout',
    });

});

// insertar una nueva novedad
router.post('/agregar', async (req, res, next) => {

    try {
        console.log(req.body)
        if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
            await novedadesModel.insertNovedad(req.body);
            res.redirect('/admin/novedades')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se cargó la novedad correctamente'
        })

    }
})

// traer vista de modificar una novedad
router.get('/modificar/:id', async (req, res, next) => {
    var id = req.params.id;
    var novedad = await novedadesModel.getNovedadById(id);

    res.render('admin/modificar', {
        layout: 'admin/layout',
        novedad
    })

});

// modificar novedad
router.post('/modificar', async (req, res, next) => {

    try {
        var obj = {
            titulo: req.body.titulo,
            subtitulo: req.body.subtitulo,
            cuerpo: req.body.cuerpo,
        }

        console.log(obj)
        await novedadesModel.updateNovedadById(obj, req.body.id);
        res.redirect('/admin/novedades');

    } catch (error) {
        console.log(error)
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se modificó la novedad correctamente'
        })
    }
})


module.exports = router;