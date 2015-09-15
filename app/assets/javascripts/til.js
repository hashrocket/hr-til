$(function(){

  $(document.body).on("click", "#flash p", function(e) {
    e.preventDefault();
    $(this).fadeOut(200);
  });

  $(".site_about, .site_search").on("click", ".aside_toggle", function(e) {
    e.preventDefault();
    $(this).closest('aside')
      .toggleClass('open')
      .filter('.open').find(":input:visible").eq(0).focus();
  });

});
