function storyDOMObject(storyJSON, user) {
  const card = document.createElement('div');
  card.setAttribute('id', storyJSON._id);
  card.className = 'story card';

  const cardBody = document.createElement('div');
  cardBody.className = 'card-body';
  card.appendChild(cardBody);

  const creatorSpan = document.createElement('a');
  creatorSpan.className = 'story-creator card-title';
  creatorSpan.innerHTML = storyJSON.creator_name;
  creatorSpan.setAttribute('href', '/u/profile?' + storyJSON.creator_id);
  cardBody.appendChild(creatorSpan);

  const contentSpan = document.createElement('p');
  contentSpan.className = 'story-content card-text';
  contentSpan.innerHTML = storyJSON.content;
  cardBody.appendChild(contentSpan);

  const cardFooter = document.createElement('div');
  cardFooter.className = 'card-footer';
  card.appendChild(cardFooter);

  const commentsDiv = document.createElement('div');
  commentsDiv.setAttribute('id', storyJSON._id + '-comments');
  commentsDiv.className = 'story-comments';
  cardFooter.appendChild(commentsDiv);

  return card;
}

function commentDOMObject(commentJSON) {
  commentDiv = document.createElement('div');
  commentDiv.setAttribute('id', commentJSON._id);
  commentDiv.className = 'comment mb-2';

  commentCreatorSpan = document.createElement('a');
  commentCreatorSpan.className = 'comment-creator';
  commentCreatorSpan.innerHTML = commentJSON.creator_name;
  commentCreatorSpan.setAttribute('href', '/u/profile?' + commentJSON.creator_id);
  commentDiv.appendChild(commentCreatorSpan);

  commentContentSpan = document.createElement('span');
  commentContentSpan.className = 'comment-content';
  commentContentSpan.innerHTML = ' | ' + commentJSON.content;
  commentDiv.appendChild(commentContentSpan);

  return commentDiv;
}

function renderStories(user) {
  const storiesDiv = document.getElementById('stories');
  get('<external API link>/api/stories', {}, function(storiesArr) {
    for (let i = 0; i < storiesArr.length; i++) {
      const currentStory = storiesArr[i];
      storiesDiv.prepend(storyDOMObject(currentStory, user));

      get('<external API link>/api/comment', { 'parent': currentStory._id }, function(commentsArr) {
        for (let j = 0; j < commentsArr.length; j++) {
          const currentComment = commentsArr[j];
          const commentDiv = document.getElementById(currentComment.parent + '-comments');
          commentDiv.appendChild(commentDOMObject(currentComment));
        }
      });
    }
  });
}
