$(function(){

  var post_form = {
    $el: $("#post_edit"),
    renderMarkdown: function() {
      var txt = post_form.$textarea.val();
      $.post("/post_preview", { body: txt }, function(result){
        post_form.$preview.html(result);
      });
    },
    renderTitle: function() {
      var txt = post_form.$titletextfield.val();
      post_form.$title_preview.text(txt);
    },
    renderCharacterLimit: function() {
      post_form.renderCountMessage(
        post_form.$character_limit,
        post_form.title_max - post_form.$titletextfield.val().length,
        'character'
      );
    },
    renderWordLimit: function() {
      post_form.word_count = post_form.$textarea.val().split(/\s+|\n/).filter(Boolean).length,
      post_form.renderCountMessage(
        post_form.$word_limit,
        post_form.max - post_form.word_count,
        'word'
      );
      post_form.$word_count.text("word count: " + post_form.word_count);
    },
    renderCountMessage: function($el, amount, noun) {
      var plural = amount === 1 ? '' : 's';
      $el
        .toggleClass('negative', amount < 0)
        .text(amount + ' ' + noun + plural + ' available');
    },
    init: function() {
      if (!this.$el.length) { return; }

      this.$el.find('textarea.autosize').autosize();

      this.$preview = this.$el.find('.content_preview');
      this.$title_preview = this.$el.find('.title_preview');
      this.$word_count = this.$el.find('.word_count');
      this.$word_limit = this.$el.find('.word_limit');
      this.$character_limit = this.$el.find('.character_limit');

      this.max = +this.$word_limit.data('limit');
      this.title_max = +this.$character_limit.data('limit');

      this.$textarea = this.$el.find('#post_body');
      this.$titletextfield = this.$el.find('#post_title');

      this.$titletextfield.on('keyup', this.renderCharacterLimit);
      this.$titletextfield.on('keyup', this.renderTitle);

      this.$textarea.on('keyup', this.renderWordLimit);
      this.$textarea.on('keyup', debounce(this.renderMarkdown, 350));

      this.$textarea.add(this.$titletextfield).trigger('keyup');
    }
  }

  post_form.init();

  // Taken from underscore.js
  function debounce(func, wait, immediate) {
    var timeout;
    return function() {
      var context = this, args = arguments;
      var later = function() {
        timeout = null;
        if (!immediate) func.apply(context, args);
      };
      var callNow = immediate && !timeout;
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
      if (callNow) func.apply(context, args);
    };
  };

});
