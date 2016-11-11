var PieChart = function() {
  var container = document.getElementById('pieChart');

  var chart = new Highcharts.Chart({

    chart: {
      type: "pie",
      renderTo: container
    },
    title: {
      text: "Pokemon Types I've Caught"
    },
    series: [
       {
         name: "Type of Pokemon",
         data: [
         {
         name: "Fire",
         y: 1,
         color: 'tomato'
       },
       {
         name: "Water",
         y: 1,
         color: 'lightskyblue'
       },
       {
         name: "Grass",
         y: 100,
         color: 'green'
       }]
     }]
  });
}