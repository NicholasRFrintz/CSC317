function addNewComment(data){
  let commentList = document.getElementById('comment-space');
  let newComment = document.createElement('template');
  newComment.innerHTML=
    `<div id="message-${data.commentId}">
    <h2 class="comment-content3">Content: ${data.text}</h2>
    <h3 class="comment-content1">By: ${data.username}</h3>
    <h3 class="comment-content2">Created At: ${new Date().toLocaleString("en-US",{
      timeStyle:"long",
      dateStyle:"long"
    })}</h3>
    </div>`;
    commentList.append(newComment.content);
    location.reload();
    document.getElementById(`message-${data.commentId}`).scrollIntoView();
}

document.getElementById('comment-button')
  .addEventListener('click', function(ev){
    let commentTextElement = document.getElementById('comment-text');
    let commentText = commentTextElement.value;
    let postId = ev.currentTarget.dataset.postid;
    
    if(!commentText) return;
    
    fetch("/comments/create", {
      method: "POST",
      headers: {
        "Content-Type": "Application/json"
      },
      body: JSON.stringify({
        comment: commentText,
        postId: postId
      })
    })
    .then(response => response.json())
    .then(res_json => {
      addNewComment(res_json.data);
    })
    .catch(err => console.log(err));
  })