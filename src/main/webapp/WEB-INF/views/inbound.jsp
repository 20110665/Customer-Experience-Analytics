 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
  <body>
    <div id="wraper">
      <div id="header">
        <div class="abc">
            <h3>Inbound Call Metrics</h3>
          </div>
      </div>
      <div class="container">
        <div class="Matrics">
          <div>
            <h3>2098</h3>
            <p>Total Calls</p>
          </div>
          <div>
            <h3>123</h3>
            <p>Answered Calls</p>
          </div>
          <div>
            <h3>356</h3>
            <p>Missed Calls</p>
          </div>
          <div>
            <h3>124</h3>
            <p>Abandoned Calls</p>
          </div>
          <div>
            <h3>320</h3>
            <p>Short Abandoned Calls</p>
          </div>
          <div>
            <h3>25</h3>
            <p>Voicemalls</p>
          </div>
        </div>
      </div>
      <div class="container">
        <canvas id="myChart"></canvas>
    </div>
    
    
    <script>
        let myChart = document.getElementById('myChart').getContext('2d');
        // Global Options
        Chart.defaults.global.defaultFontFamily = 'Lato';
        Chart.defaults.global.defaultFontSize = 18;
        Chart.defaults.global.defaultFontColor = '#777';
    
        let massPopChart = new Chart(myChart, {
          type:'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
          data:{
            labels:['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4'],
            datasets:[{
              label:'Population',
              data:[
                617594,
                181045,
                153060,
                106519,
                105162,
                95072
              ],
              //backgroundColor:'green',
              backgroundColor:[
                'rgba(255, 99, 132, 0.6)',
                'rgba(54, 162, 235, 0.6)',
                'rgba(255, 206, 86, 0.6)',
                'rgba(75, 192, 192, 0.6)'
              ],
              borderWidth:1,
              borderColor:'#777',
              hoverBorderWidth:3,
              hoverBorderColor:'#000'
            }]
          },
          options:{
            title:{
              display:true,
              text:'Number of inbound calls',
              fontSize:25
            },
            legend:{
              display:true,
              position:'right',
              labels:{
                fontColor:'#000'
              }
            },
            layout:{
              padding:{
                left:50,
                right:0,
                bottom:0,
                top:0
              }
            },
            tooltips:{
              enabled:true
            }
          }
        });
      </script>
      
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.4.js"></script>
  <script>
    $(document).ready(function () {
      $("#main-menu li").removeClass("active");
      $("#main-menu li").click(function () {
        $("#main-menu li").removeClass("active");
        $(this).addClass("active");
        return false;
      });
    });
  </script>
