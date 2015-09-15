$(function(){
  var autorefresh = function() {
    var timeout;
    var resetRefreshCounter = function(){
        clearTimeout(timeout);
        timeout = setTimeout(function(){location.reload(true);}, 10 * 60 * 1000);
    }
    $(document).on('mousemove', resetRefreshCounter);
    resetRefreshCounter();
  }

  if ($("#home").length) {
    autorefresh();
  }
});
