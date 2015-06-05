$(document).ready(function() {
  var $likeActionEl = $(".js-like-action");

  $likeActionEl.each(function(index, link) {
    var id = link.id;
    var liked = $.cookie(id);
    if (liked) {
      $('#' + id).addClass('liked');
    }
  });


  $likeActionEl.click(function(e) {
    e.preventDefault();
    var id = this.id;
    var liked = $.cookie(id);
    if (!liked) {
      $.post("/posts/" + id + "/like.json", function(result){
        var like_text = result.likes > 1 ? " times" : " time";
        $('#' + id).addClass('liked').html('liked <b>' + result.likes + like_text + '</b>');
        $.cookie(id, true, { expires: 3600 });
      });
    }
  });
});
