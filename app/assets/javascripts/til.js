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

	$('#post_body').on('keyup', debounce(renderMarkdown, 350)).each(renderMarkdown);

	var renderWordCount = function(){
		var txt = $("#post_body").val();
		$.post("/word_count", {body: txt}, function(result){
			$(".word_count").html(result);
		});
	};

	$('#post_body').on('keyup', debounce(renderWordCount, 500)).each(renderWordCount);
});
