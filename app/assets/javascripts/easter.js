$(function(){

  $(document).ready(function(e) {
    if($.cookie('bg-color')) {
      $('body').css('background', $.cookie('bg-color'));
    }
  });

  var kkeys = [], colorz = '67,79,76,79,82,90';
  $(document).keydown(function(e) {
    kkeys.push(e.keyCode);
    if(kkeys.toString().indexOf(colorz) >= 0) {
      kkeys = [];
      var colors = [
        '#D5E9F5',
        '#F5E0D6',
        '#F5D6D6',
        '#F5EBD6',
        '#F5D6E8',
        '#E8F5D6',
        '#F2D6F5',
        '#D9F5D6',
        '#D6DBF5',
        '#D6F5F5',
        '#D6E3F5',
        '#D6DEF5',
        '#D6D9F5',
        '#D6D6F5'
      ];

      var randomColor = colors[Math.floor(Math.random() * colors.length)];

      $('body').css('background', (randomColor));

      $.cookie('bg-color', randomColor, { path: '/'});
    }
  });
});
