$(function() {

  var statistics = {
    $el: $("#statistics"),
    colors: {
      fillColor: "#ffcccc",
      strokeColor: "rgba(220,220,220,0.8)",
      highlightFill: '#ffaaaa',
      highlightStroke: "rgba(220,220,220,1)"
    },
    handlers: {
      tagPostCounts: function(data) {
        var datapoints = [];
        var tags = Object.keys(data).sort(function(tag_a,tag_b){
          return data[tag_b] - data[tag_a];
        });

        tags.forEach(function(tag){
          datapoints.push(data[tag]);
        });

        statistics.buildChart('#my_chart_tags', tags, datapoints)
      },
      authorPostCounts: function(data) {
        var authors = Object.keys(data).sort(function(author_a,author_b){
          return data[author_b] - data[author_a];
        });
        var datapoints = [];
        authors.forEach(function(author){
          datapoints.push(data[author]);
        });
        statistics.buildChart('#my_chart_authors', authors, datapoints)
      },
      postDaysCounts: function(data) {
        var dates = Object.keys(data);
        var datapoints = [];
        dates.forEach(function(date){
          datapoints.push(data[date]);
        });
        statistics.buildChart('#my_chart_posts', dates, datapoints)
      }
    },
    buildChart: function(id, labels, datapoints) {
      var ctx = $(id)[0].getContext('2d');
      return new Chart(ctx).Bar({
        labels: labels,
        datasets: [ $.extend(statistics.colors, { data: datapoints }) ]
      }, {
        scaleLabel: " <%= value%>" // Fix scale label cropping bug
      });
    },

    init: function() {
      Chart.defaults.global.responsive = true;
      $.get('/statistics/tag_posts_counts', this.handlers.tagPostCounts);
      $.get('/statistics/author_posts_counts', this.handlers.authorPostCounts);
      $.get('/statistics/post_days_counts', this.handlers.postDaysCounts);
    }
  };

  statistics.init();

});
