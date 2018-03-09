var express = require('express');
//var connect = require('../utils/sqlConnect'); don't think this is working right not sure why 
var router = express.Router();

/* GET home page. */
// router.get('/', (req, res) => {
//   connect.query('SELECT * FROM adult', (err, result) => {
//     if (err) {
//       throw err; console.log(err);
//     } else {
//       console.log(result);
//
//       res.render('Adult', {
//         title: 'Video Player Project | Adult',
//         message : "Adult Video Section",
//         movieData : result
//       });
//     }
//   });
// }); This didn't work

router.get('/', function(req, res, next) {
  res.render('Adult', {
    title: 'Video Player Project | Adult',
  message: 'Adult Video Section' });
});

module.exports = router;
