var express = require('express');
var router = express.Router();

/* GET blog listing. */
router.get('/', function (req, res, next) {
  res.render('./blog'); // Renderizar la vista blog.hbs
});

module.exports = router;
