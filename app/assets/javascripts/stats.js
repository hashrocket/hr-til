Chart.defaults.global.responsive = true;

$.get('/statistics/tag_posts_counts',function(data){
  var tags = Object.keys(data).sort(function(tag_a,tag_b){
    return data[tag_b] - data[tag_a];
  });
  var datapoints = [];
  tags.forEach(function(tag){
    datapoints.push(data[tag]);
  });
  var ctx = document.getElementById("my_chart_tags").getContext("2d");
  var myBarChart = new Chart(ctx).Bar({
    labels: tags,
    datasets: [
      {
        label: "Tags by posts",
        fillColor: "#ffcccc",
        strokeColor: "rgba(220,220,220,0.8)",
        highlightFill: '#ffaaaa',
        highlightStroke: "rgba(220,220,220,1)",
        data: datapoints
      }
    ]
  },{
    scaleLabel: " <%= value%>" // Fix scale lable cropping bug
  });
});

$.get('/statistics/author_posts_counts',function(data){
  var authors = Object.keys(data).sort(function(author_a,author_b){
    return data[author_b] - data[author_a];
  });
  var datapoints = [];
  authors.forEach(function(author){
    datapoints.push(data[author]);
  });

  var ctx = document.getElementById("my_chart_authors").getContext("2d");
  var myBarChart = new Chart(ctx).Bar({
    labels: authors,
    datasets: [
      {
        label: "Posts by author",
        fillColor: "#ffcccc",
        strokeColor: "rgba(220,220,220,0.8)",
        highlightFill: '#ffaaaa',
        highlightStroke: "rgba(220,220,220,1)",
        data: datapoints
      }
    ]
  },{
    scaleLabel: " <%= value%>" // Fix scale lable cropping bug
  });
});

$.get('/statistics/post_days_counts',function(data){
  var dates = Object.keys(data);
  var datapoints = [];
  dates.forEach(function(date){
    datapoints.push(data[date]);
  });

  var ctx = document.getElementById("my_chart_posts").getContext("2d");
  var myBarChart = new Chart(ctx).Line({
    labels: dates,
    datasets: [
      {
        label: "Posts by date",
        strokeColor: "#ffcccc",
        fillColor: "rgba(220,220,220,0.2)",
        pointColor: "rgba(220,220,220,1)",
        pointStrokeColor: "#fff",
        pointHighlightFill: "#fff",
        pointHighlightStroke: "rgba(220,220,220,1)",
        data: datapoints
      }
    ]
  },{
    scaleBeginAtZero: true,
    scaleOverride: true,
    scaleSteps: Math.max.apply(Math, datapoints) + 10,
    scaleStepWidth: 1,
    bezierCurve: true,
    showTooltips: false,
    scaleLabel: " <%= value%>" // Fix scale lable cropping bug
  });
});
