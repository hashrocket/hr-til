$(document).ready(function() {
  var slug, liked, like_text
  var $likeActionEl = $(".js-like-action");

  $likeActionEl.each(function(index, link) {
    slug = link.id;
    liked = $.cookie(likeSlug(slug));
    if (liked) {
      $('#' + slug).addClass('liked');
    }
  });

  $likeActionEl.click(function(e) {
    e.preventDefault();
    slug = this.id;
    liked = $.cookie(likeSlug(slug));
    if (liked === undefined) {
      $.post("/posts/" + slug + "/like.json", function(result){
        $('#' + slug).addClass('liked').html(newHtml(result));
        $.cookie(likeSlug(slug), 'liked', { path: '/', expires: 3600 });
      });
    } else {
      $.post("/posts/" + slug + "/unlike.json", function(result){
        $('#' + slug).removeClass('liked').html(newHtml(result));
        $.removeCookie(likeSlug(slug), { path: '/', expires: 3600 });
      });
    }
  });

  function newHtml(result) {
    like_text = result.likes === 1 ? " time" : " times";
    return 'liked <b>' + result.likes + like_text + '</b>';
  }

  function likeSlug(slug) {
    return 'liked-' + slug;
  }
});
