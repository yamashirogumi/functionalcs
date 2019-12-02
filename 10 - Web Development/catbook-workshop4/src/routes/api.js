// dependencies
const express = require('express');

// models
const Story = require('../models/story');
const Comment = require('../models/comment');

const router = express.Router();

// api endpoints
router.get('/whoami', function(req, res) {
  res.send({
    _id: 'anonid',
    name: 'Anonymous',
    last_post: 'Anon was here',
  });
});

router.get('/user', function(req, res) {
  res.send({
    _id: 'anonid',
    name: 'Anonymous',
    last_post: 'Anon was here',
  });
});

router.get('/stories', function(req, res) {
  Story.find({}, function(err, stories) {
    res.send(stories);
  });
});

router.post(
  '/story',
  function(req, res) {
    const newStory = new Story({
      'creator_id': 'anonid',
      'creator_name': 'Anonmymous',
      'content': req.body.content,
    });

    newStory.save(function(err,story) {
      // configure socketio
      if (err) console.log(err);
    });

    res.send({});
  }
);

router.get('/comment', function(req, res) {
  Comment.find({ parent: req.query.parent }, function(err, comments) {
    res.send(comments);
  })
});

router.post(
  '/comment',
  function(req, res) {
    const newComment = new Comment({
      'creator_id': 'anonid',
      'creator_name': 'Anonymous',
      'parent': req.body.parent,
      'content': req.body.content,
    });

    newComment.save(function(err, comment) {
      if (err) console.log(err);
    });

    res.send({});
  }
);
module.exports = router;
