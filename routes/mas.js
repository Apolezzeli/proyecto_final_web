var express = require('express');
var router = express.Router();

/* GET mas listing. */
router.get('/', function (req, res, next) {
  res.render('./mas'); // Renderizar la vista mas.hbs
});

module.exports = router;
