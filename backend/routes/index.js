var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/apicall', function(req, res, next) {
  console.log('success in apicall');
  console.log('value of testytest', req.body.testytest);
  res.json({"success":"yolo"})
  // res.render('index', { title: 'Express' });
  // console.log('success in apicall');
});



module.exports = router;
