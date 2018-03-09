var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('Kids', {
    title: 'Video Player Project | Kids',
  message: 'Kids Video Section' });
});

module.exports = router;
