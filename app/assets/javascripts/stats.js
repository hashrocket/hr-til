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
        statistics.processData(data, '#my_chart_tags', true)
      },
      authorPostCounts: function(data) {
        statistics.processData(data, '#my_chart_authors', true)
      },
      postDaysCounts: function(data) {
        statistics.processData(data, '#my_chart_posts')
      }
    },
    processData: function(data, selector, sort) {

      var datapoints = [];
      var labels = Object.keys(data);

      if (sort) {
        labels.sort(function(a, b) {
          return data[b] - data[a];
        });
      }

      labels.forEach(function(item) {
        datapoints.push(data[item]);
      });

      statistics.buildChart(selector, labels, datapoints)

    },
    buildChart: function(selector, labels, datapoints) {
      var ctx = $(selector)[0].getContext('2d');
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
