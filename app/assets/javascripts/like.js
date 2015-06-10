$(document).ready(function() {
  var $likeActionEl = $(".js-like-action");

  $likeActionEl.each(function(index, link) {
    var slug = link.id;
    var liked = $.cookie('liked-' + slug);
    if (liked) {
      $('#' + slug).addClass('liked');
    }
  });

  $likeActionEl.click(function(e) {
    e.preventDefault();
    var slug = this.id;
    var liked = $.cookie('liked-' + slug);
    if (liked) {
      $.post("/posts/" + slug + "/unlike.json", function(result){
        var like_text = result.likes == 1 ? " time" : " times";
        $('#' + slug).removeClass('liked').html('liked <b>' + result.likes + like_text + '</b>');
        $.removeCookie('liked-' + slug, { path: '/', expires: 3600 });
      });
    } else {
      $.post("/posts/" + slug + "/like.json", function(result){
        var like_text = result.likes == 1 ? " time" : " times";
        $('#' + slug).addClass('liked').html('liked <b>' + result.likes + like_text + '</b>');
        $.cookie('liked-' + slug, 'liked', { path: '/', expires: 3600 });
      });
    }
  });
});
