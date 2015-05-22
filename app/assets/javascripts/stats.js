$(function() {

  var charts = [
    {
      path: 'tag_posts_counts',
      selector: '#my_chart_tags',
      sort: true
    },
    {
      path: 'author_posts_counts',
      selector: '#my_chart_authors',
      sort: true
    },
    {
      path: 'post_days_counts',
      selector: '#my_chart_posts'
    },
  ];

  var statistics = {
    $el: $("#statistics"),
    colors: {
      fillColor: "#ffcccc",
      strokeColor: "rgba(220,220,220,0.8)",
      highlightFill: '#ffaaaa',
      highlightStroke: "rgba(220,220,220,1)"
    },
    processChart: function(chart) {

      $.get('/statistics/' + chart.path, function(data) {
        var datapoints = [];
        var labels = Object.keys(data);

        if (chart.sort) {
          labels.sort(function(a, b) {
            return data[b] - data[a];
          });
        }

        labels.forEach(function(item) {
          datapoints.push(data[item]);
        });
        statistics.buildChart(chart.selector, labels, datapoints)
      });

    },
    buildChart: function(selector, labels, datapoints) {

      new Chart($(selector)[0].getContext('2d')).Bar({
        labels: labels,
        datasets: [ $.extend(statistics.colors, { data: datapoints }) ]
      }, {
        scaleLabel: " <%= value%>" // Fix scale label cropping bug
      });

    },
    init: function() {
      Chart.defaults.global.responsive = true;
      charts.forEach(this.processChart);
    }
  };

  statistics.init();

});
