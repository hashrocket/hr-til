$(function(){

  function LikeButton(el) {
    this.id = el.id;
    this.$el = $(el);
    this.$el.on("click", $.proxy(this.toggle, this));
    this.updateClass();
  };

  LikeButton.prototype.toggle = function(e) {
    e.preventDefault();
    this.isLiked() ? this.unlike() : this.like();
  };

  LikeButton.prototype.like = function() {
    var lb = this;
    $.post("/posts/" + lb.id + "/like.json", function(result){
      $.cookie(lb.likeSlug(), 'liked', { path: '/', expires: 3600 });
      lb.updateText(result);
      lb.updateClass();
    });
  };

  LikeButton.prototype.unlike = function() {
    var lb = this;
    $.post("/posts/" + lb.id + "/unlike.json", function(result){
      $.removeCookie(lb.likeSlug(), { path: '/', expires: 3600 });
      lb.updateText(result);
      lb.updateClass();
    });
  };

  LikeButton.prototype.updateClass = function() {
    this.$el.toggleClass('liked', this.isLiked());
  }

  LikeButton.prototype.updateText = function(result) {
    like_text = result.likes === 1 ? " time" : " times";
    this.$el.html('liked <b>' + result.likes + like_text + '</b>');
  };

  LikeButton.prototype.isLiked = function() {
    return !!$.cookie(this.likeSlug());
  };

  LikeButton.prototype.likeSlug = function() {
    return 'liked -' + this.id;
  };

  $('.js-like-action').each(function() {
    new LikeButton(this);
  });

});
