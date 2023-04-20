  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<body>
    <div id="wraper">
      <div class="dashboard">
        <h3 style="font-size: 30px">My Dashboard</h3>
        <div class="service-list">
          <div class="service-item">
            <div class="service-content">
              <h3 style="padding: 0px 0px 0px 10px">Contact on Queue</h3>
              <p
                style="
                  padding: 0px 0px 0px 10px;
                  margin-top: -20px;
                  color: #146df2;
                "
              >
                Live
              </p>
              <p style="text-align: center; font-size: 80px; margin: 0px">31</p>
            </div>
          </div>
          <div class="service-item">
            <div class="service-content">
              <h3 style="padding: 0px 0px 0px 10px">Service Level</h3>
              <p
                style="
                  padding: 0px 0px 0px 10px;
                  margin-top: -20px;
                  color: #146df2;
                "
              >
                To day
              </p>
              <p style="text-align: center; font-size: 80px; margin: 0px">
                85%
              </p>
            </div>
          </div>
          <div class="service-item">
            <div class="service-content">
              <h3 style="padding: 0px 0px 0px 10px">Abandon Rate</h3>
              <p
                style="
                  padding: 0px 0px 0px 10px;
                  margin-top: -20px;
                  color: #146df2;
                "
              >
                To day
              </p>
              <p style="text-align: center; font-size: 80px; margin: 0px">
                85%
              </p>
            </div>
          </div>
          <div class="service-item">
            <div class="service-content">
              <h3 style="padding: 0px 0px 0px 10px">Average Handle Time</h3>
              <p
                style="
                  padding: 0px 0px 0px 10px;
                  margin-top: -20px;
                  color: #146df2;
                "
              >
                To day
              </p>
              <p style="text-align: center; font-size: 80px; margin: 0px">
                05:59
              </p>
            </div>
          </div>
        </div>
        <br />
        <div class="container">
          <div class="service-agent">
            <div class="item1">
              <div class="service-content">
                <h3 style="padding: 0px 0px 0px 10px; font-size: 20px">
                  Contact List
                </h3>
                <p
                  style="
                    padding: 0px 0px 0px 10px;
                    margin-top: -20px;
                    color: #146df2;
                  "
                >
                  Live
                </p>
              </div>
              <div class="tabel-contact-list">
                <table>
                  <tr id="title-table">
                    <th>Direction</th>
                    <th>Status</th>
                    <th>Agent</th>
                    <th>Contact Numbers</th>
                    <th>Duration</th>
                  </tr>
                  <tr>
                    <td>Call</td>
                    <td>ACW</td>
                    <td>Trần Văn Kiệt</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                  <tr>
                    <td>Receive</td>
                    <td>Ringing</td>
                    <td>Chau Sóc Thái</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                  <tr>
                    <td>Call</td>
                    <td>In Progress</td>
                    <td>Nguyễn Đình Thiện</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                  <tr>
                    <td>Receive</td>
                    <td>Ringing</td>
                    <td>Trần Văn Kiệt</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                  <tr>
                    <td>Call</td>
                    <td>Queue</td>
                    <td>Chau Sóc Thái</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                  <tr>
                    <td>Receive</td>
                    <td>ACW</td>
                    <td>Nguyễn Đình Thiện</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                  <tr>
                    <td>Receive</td>
                    <td>Ringing</td>
                    <td>Trần Văn Kiệt</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                  <tr>
                    <td>Call</td>
                    <td>Queue</td>
                    <td>Chau Sóc Thái</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                  <tr>
                    <td>Receive</td>
                    <td>ACW</td>
                    <td>Nguyễn Đình Thiện</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                  <tr>
                    <td>Receive</td>
                    <td>Ringing</td>
                    <td>Trần Văn Kiệt</td>
                    <td>0312345678</td>
                    <td>00:00</td>
                  </tr>
                </table>
              </div>
            </div>
            <div class="item2">
              <div class="service-content">
                <h3 style="padding: 0px 0px 0px 10px; font-size: 20px">
                  Inbound Contact
                </h3>
                <p
                  style="
                    padding: 0px 0px 0px 10px;
                    margin-top: -20px;
                    color: #146df2;
                  "
                >
                  Live
                </p>
              </div>

              <div class="ChartDashboard">
                <canvas id="myChart" width="300" height="300"></canvas>
              </div>
              <script>
                //setup block
                const data = {
                  // labels: ["30 Missed", "28 Answered", "40Abandoned", "2 Short Abandoned"],
                  datasets: [
                    {
                      label: "# of Votes",
                      data: [9, 18, 71, 7],
                      backgroundColor: [
                        "rgba(231, 76, 60, 1)",
                        "rgba(241, 196, 15, 1)",
                        "rgba(46, 204, 113, 1)",
                        "rgba(255, 255, 255 ,1)",
                      ],
                      borderColor: [
                        "rgba(255, 255, 255 ,1)",
                        "rgba(255, 255, 255 ,1)",
                        "rgba(255, 255, 255 ,1)",
                        "rgba(255, 255, 255 ,1)",
                      ],
                      borderWidth: 1,
                      cutout: "80%",
                    },
                  ],
                };
                //Counter plugin block
                const counter = {
                  id: "counter",
                  beforeDraw(chart, args, options) {
                    const {
                      ctx,
                      chartArea: { top, right, bottom, left, width, height },
                    } = chart;
                    ctx.save();
                    ctx.font = "90px sans-serif";
                    ctx.textAlign = "center";
                    ctx.fillText("98", width / 2, (top + height) / 2);
                  },
                };
                //Config block
                const config = {
                  type: "doughnut",
                  data,
                  options: {},
                  plugins: [counter],
                };
                //Render init block
                var myChart = new Chart(
                  document.getElementById("myChart"),
                  config
                );
              </script>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>