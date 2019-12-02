const API_ENDPOINT_START = 'http://google-catbook.herokuapp.com';

// GET /api/stories fetches all stories
// GET /api/comment fetches all comments for a story, given the story's id (passed as the 'parent' parameter)

// {
//   _id: "5a53b37189c7bb15141e9e40",
//   creator_name: "Danny Tang", 
//   content: "I don't have any cats now, but this web app has inspired me to adopt 10!"
// }

// Creates an html block for a story
function storyDOMObject(storyJSON) {
}

// {
//   _id: "5a53ba14a6078f28283eb9a1",
//   creator_name: "Rupayan Neogy", 
//   parent: "5a53b37189c7bb15141e9e40", 
//   content: "I think a good name is Winston"
// }

// Creates a comment block for a story
function commentDOMObject(commentJSON) {
}

// Makes API requests and calls helper functions
function renderStories() {
}
