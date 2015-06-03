$(document).ready(function() {
  var $likeActionEl = $(".js-like-action");

  $likeActionEl.each(function(index, link) {
    var id = link.id;
    var liked = $.cookie(id);
    if (liked) {
      $('#' + id).addClass('disabled');
    }
  });


  $likeActionEl.click(function(e) {
    e.preventDefault();
    var id = this.id;
    var liked = $.cookie(id);
    if (!liked) {
      $.post("/posts/" + id + "/like.json", function(result){
        var like_text = result.likes > 1 ? "Likes" : "Like";
        $('#' + id).addClass('disabled').text(result.likes + " " + like_text);
        $.cookie(id, true, { expires: 3600 });
      });
    }
  });
});
