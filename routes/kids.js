var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/kids', function(req, res, next) {
  res.render('Kids', {
    title: 'Video Player Project',
  message: 'Welcome to Our Video Player App' });
});

module.exports = router;
