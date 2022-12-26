var express = require('express');
const {isLoggedIn} = require('../middleware/protectors');
const {getRecentPosts, getPostById, getCommentsForPostById} = require('../middleware/posts');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'CSC 317 App', name:"Douglas Cheung" });
});

router.get("/index.html", getRecentPosts, function(req, res, next) {
  res.render('index', { title: 'The Blank Space - Index', name:"Douglas Cheung" });
});
router.get("/login.html", function(req, res, next) {
  res.render('login', { title: 'The Blank Space - Login', name:"Douglas Cheung" });
});
router.get("/postimage.html", function(req, res, next) {
  res.render('postimage', { title: 'The Blank Space - Post an Image', name:"Douglas Cheung" });
});
router.get("/registration.html", function(req, res, next) {
  res.render('registration', { title: 'The Blank Space - Registration', name:"Douglas Cheung" });
});
router.get("/viewpost.html", function(req, res, next) {
  res.render('viewpost', { title: 'The Blank Space - View a Post', name:"Douglas Cheung" });
});
router.get("/posts/:id(\\d+)", getPostById, getCommentsForPostById, function(req, res) {
  res.render('viewpost', { title: 'The Blank Space - Post Number {{this.id}}', name:"Douglas Cheung" });
});

module.exports = router;
