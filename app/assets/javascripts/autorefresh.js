$(function(){
  var reloadPage = function() {
    if(navigator.onLine) {
      location.reload(true);
    }
  };

  var autorefresh = function() {
    var timeout;
    var resetRefreshCounter = function(){
        clearTimeout(timeout);
        timeout = setTimeout(reloadPage, 10 * 60 * 1000);
    }
    $(document).on('mousemove', resetRefreshCounter);
    resetRefreshCounter();
  };

  if ($("#home").length) {
    autorefresh();
  }
});
