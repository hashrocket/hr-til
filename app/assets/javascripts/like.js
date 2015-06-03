$(document).ready(function() {
  $(".js-like-action").click(function(e) {
    e.preventDefault();
    var id = this.id;
    $.post("/posts/" + id + "/like.json", function(result){
      var like_text = result.likes > 1 ? "Likes" : "Like";
      $('#' + id).text(result.likes + " " + like_text);
    });
  });
});
