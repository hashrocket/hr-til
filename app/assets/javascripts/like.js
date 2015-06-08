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
    if (liked) {
      $.post("/posts/" + id + "/unlike.json", function(result){
        var like_text = result.likes == 1 ? " time" : " times";
        $('#' + id).removeClass('liked').html('liked <b>' + result.likes + like_text + '</b>');
        $.removeCookie(id);
      });
    } else {
      $.post("/posts/" + id + "/like.json", function(result){
        var like_text = result.likes == 1 ? " time" : " times";
        $('#' + id).addClass('liked').html('liked <b>' + result.likes + like_text + '</b>');
        $.cookie(id, 'liked', { expires: 3600 });
      });
    }
  });
});
