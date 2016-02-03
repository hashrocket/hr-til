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
      var Colors = ['#BDA3DE', '#DEA3A8', '#C4DEA3', '#DEA3BA', '#DEB3A3', '#D9A3DE', '#DED9A3'];
      var randomColor = Colors[Math.floor(Math.random() * Colors.length)];

      $('body').css('background', (randomColor));

      $.cookie('bg-color', randomColor, { path: '/'});
    }
  });
});
