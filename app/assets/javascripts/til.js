$(function(){
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

	var renderMarkdown = function(){
		var txt = $("#post_body").val();
		$.post("/post_preview", {body: txt}, function(result){
			$(".body").html(result);
		});
	};

	var renderWordCount = function(){
		var txt = $("#post_body").val();
		$.post("/word_count", {body: txt}, function(result){
			$(".word_count").html(result);
		});
	};

	$('#post_body').on('keyup', debounce(renderWordCount, 500)).each(renderWordCount);
	$('#post_body').on('keyup', debounce(renderMarkdown, 350)).each(renderMarkdown);

        !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');
});
