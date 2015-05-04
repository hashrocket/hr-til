$.get('/statistics/tag_posts_counts',function(data){
  var tags = Object.keys(data).sort(function(tag_a,tag_b){
    return data[tag_b] - data[tag_a];
  });
  var datapoints = [];
  tags.forEach(function(tag){
    datapoints.push(data[tag]);
  });

  var ctx = document.getElementById("myChart").getContext("2d");
  var myBarChart = new Chart(ctx).Bar({
    labels: tags,
    datasets: [
      {
        label: "My First dataset",
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
