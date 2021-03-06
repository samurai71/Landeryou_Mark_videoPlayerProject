var express = require('express');
var router = express.Router();

/* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render('home', {
//     title: 'Video Player Project',
//   message: 'Welcome to Our Video Player App' });
// });

module.exports = router;

//var express = require('express');
//var router = express.Router();
var config = require('../config');

// do some checking here => check the default user profile
// ternary statement => MDN ternary
var toRender = (config.kidsmode) ? 'main_kids' : 'home';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render(toRender, {
    title: 'Video Player Project',
    message : "Welcome to Our Video Player App",
    mainpage : true,
    cms : false,
    kidsmode : config.kidsmode
  });
});

// router.get('/adult', (req, res)) => {
//   console.log('hit the adult route');
// };

/*router.get('/cms', (req, res) => {
  console.log('hit the cms route');
  res.render('cmsform', {
    cms: true,
    mainPage : false
  });
});*/



module.exports = router;
