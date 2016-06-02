$(function() {

  $.fn.syntaxLabel = function() {
    var $el = $(this);
    var $hl = $el.filter('.highlight').add($el.find('.highlight'));
    $hl.each(function() {
      var language = $(this).attr('class').replace(/\s*highlight\s*/, '');
      console.log(language);
      $(this).attr('data-language', language);
    });
  }

});
