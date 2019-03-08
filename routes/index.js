var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'Prodavnica' });
});

router.get('/home', function(req, res, next) {
    res.render('home');
});

router.get('/kupovina', function(req, res, next) {
    res.render('kupovina');
});

router.get('/kontakt', function(req, res, next) {
    res.render('kontakt');
});
module.exports = router;
