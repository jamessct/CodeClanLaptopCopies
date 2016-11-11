var ColumnChart = function() {

  var container = document.getElementById('columnChart');

  var chart = new Highcharts.Chart({
    chart: {
      type: 'column', 
      renderTo: container
    },
    title: {
      text: 'our fav programming languages :) :) :)'
    },
    series: [{
      name: "Cohort 6",
      data: [8, 12, 3, 1]
    }],
    xAxis: {
      categories: ['JavaSript', 'Java', 'Ruby', 'Sonic Pii']
    }
  })
}