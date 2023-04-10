 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
  <body>
    <div id="wraper">
      <div id="header">
        <!-- <nav class="container">
          <a href="" id="logo"
            ><img
              src="https://prd-cdn-talkdesk.talkdesk.com/cdn-assets/latest/talkdesk/brand/main_brand/logo/talkdesk_logo_purple.svg"
              alt="Talkdesk"
          /></a>
          <u id="main-menu">
            <li class="active"><a href="">CALL HISTORY</a></li>
            <li><a href="">CONTACT</a></li>
            <li><a href="">REPORT</a></li>
            <li><a href="">FEEDBACK</a></li>
            <li><a href="">ManagementProfile</a></li>
          </u>
        </nav> -->
        <br />
        <div class="service-list">
          <div class="service-item">
            <div class="service-content">
              <p style="text-align: center">Service Levels</p>
            </div>
            <div class="content">
              <p style="text-align: center">Today</p>
            </div>
            <canvas id="servicelevelchart" width="400" height="400"></canvas>
            <script>
              var ctx = document.getElementById("servicelevelchart");
              var dashboardChart = new Chart(ctx, {
                type: "doughnut",
                data: {
                  labels: ["Service Level"],
                  datasets: [
                    {
                      label: "# of Votes",
                      data: [90, 10],
                      backgroundColor: [
                        // "rgba(231, 76, 60, 1)",
                        "rgba(46, 204, 113, 1)",
                        "rgba(255, 255, 255 ,1)",
                      ],
                      borderColor: [
                        "rgba(255, 255, 255 ,1)",
                        "rgba(255, 255, 255 ,1)",
                      ],
                      borderWidth: 5,
                    },
                  ],
                },
                options: {
                  rotation: 1 * Math.PI,
                  circumference: 1 * Math.PI,
                  // legend: {
                  //   display: false,
                  // },
                  // tooltip: {
                  //   enabled: false,
                  // },
                  // cutoutPercentage: 80,
                },
                legend: {
                  display: true,
                  position: "right",
                  labels: {
                    fontColor: "#000",
                  },
                },
              });
            </script>
            <div class="count">
              <p style="text-align: center; font-size: 20px">90</p>
            </div>
          </div>
          <div class="service-item">
            <div class="service-content">
              <p style="text-align: center">Avg. Abandon Time</p>
            </div>
            <div class="content">
              <p style="text-align: center">Today</p>
            </div>
            <div class="count">
              <p style="text-align: center; font-size: 50px">2:30</p>
            </div>
          </div>
          <div class="service-item">
            <div class="service-content">
              <p style="text-align: center">Avg. Wait Time</p>
            </div>
            <div class="content">
              <p style="text-align: center">Today</p>
            </div>
            <div class="count">
              <p style="text-align: center; font-size: 50px">2:30</p>
            </div>
          </div>
          <div class="service-item">
            <div class="service-content">
              <p style="text-align: center">Longest Wait Time</p>
            </div>
            <div class="content">
              <p style="text-align: center">Today</p>
            </div>
            <div class="count">
              <p style="text-align: center; font-size: 50px">2:30</p>
            </div>
          </div>
        </div>
        <br />
        <div class="container">
          <div class="service-agent">
            <div class="item">
              <div class="service-content">
                <p style="text-align: center; font-size: 30px">Live Agent</p>
              </div>
              <div class="content">
                <p style="text-align: center; font-size: 20px">Today</p>
              </div>
              <canvas id="dashboardChart" width="400" height="400"></canvas>
              <script>
                var ctx = document.getElementById("dashboardChart");
                var dashboardChart = new Chart(ctx, {
                  type: "doughnut",
                  data: {
                    labels: ["Red", "Orange", "Green"],
                    datasets: [
                      {
                        label: "# of Votes",
                        data: [33, 33, 33],
                        backgroundColor: [
                          "rgba(231, 76, 60, 1)",
                          "rgba(255, 164, 46, 1)",
                          "rgba(46, 204, 113, 1)",
                        ],
                        borderColor: [
                          "rgba(255, 255, 255 ,1)",
                          "rgba(255, 255, 255 ,1)",
                          "rgba(255, 255, 255 ,1)",
                        ],
                        borderWidth: 5,
                      },
                    ],
                  },
                  options: {
                    rotation: 1 * Math.PI,
                    circumference: 1 * Math.PI,
                    legend: {
                      display: false,
                    },
                    tooltip: {
                      enabled: false,
                    },
                    cutoutPercentage: 80,
                  },
                });
              </script>
              <div class="count">
                <p style="text-align: center; font-size: 40px">42</p>
              </div>
            </div>
            <div class="item">
              <div class="service-content">
                <p style="text-align: center; font-size: 30px">Live Calls</p>
              </div>
              <div class="content">
                <p style="text-align: center; font-size: 20px">Today</p>
              </div>
              <canvas id="livecall" width="400" height="400"></canvas>
              <script>
                var ctx = document.getElementById("livecall");
                var dashboardChart = new Chart(ctx, {
                  type: "doughnut",
                  data: {
                    labels: ["Red", "Orange", "Green"],
                    datasets: [
                      {
                        label: "# of Votes",
                        data: [33, 33, 20, 14],
                        backgroundColor: [
                          "rgba(231, 76, 60, 1)",
                          "rgba(255, 164, 46, 1)",
                          "rgba(231, 76, 60, 1)",
                          "rgba(46, 204, 113, 1)",
                        ],
                        borderColor: [
                          "rgba(255, 255, 255 ,1)",
                          "rgba(255, 255, 255 ,1)",
                          "rgba(255, 255, 255 ,1)",
                        ],
                        borderWidth: 5,
                      },
                    ],
                  },
                  options: {
                    rotation: 1 * Math.PI,
                    circumference: 1 * Math.PI,
                    legend: {
                      display: false,
                    },
                    tooltip: {
                      enabled: false,
                    },
                    cutoutPercentage: 80,
                  },
                });
              </script>
              <div class="count">
                <p style="text-align: center; font-size: 40px">10</p>
              </div>
            </div>
          </div>
        </div>
      </div>
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
