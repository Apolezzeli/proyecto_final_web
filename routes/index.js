var express = require('express');
var router = express.Router();
const req = require('express/lib/request');
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index');
});

router.post('/', async (req, res, next) => {
  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var telefono = req.body.tel;
  var mensaje = req.body.mensaje;

  console.log(req.body)

  var obj = {
    to: 'apolezzeli@gmail.com',
    subjet: 'Contacto desde la web',
    html: nombre + " " + apellido + "<br> correo: " + email + "<br> tel: " + telefono + "<br> mensaje: " + mensaje,
  }

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    }
  })

  var info = await transporter.sendMail(obj);

  res.render('index',{
    message: "Mensaje enviado correctamente"
  });
}
)

module.exports = router;
