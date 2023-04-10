<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

  <body>
    <!-- <div id="wraper">
      <div id="headertitle">
        <h3>
          See how Digital Engagement enables you to meet your customers where
          they are.
        </h3>
      </div>
    </div> -->
    <div id="wraper">
      <!-- <div id="header">
        <nav class="container">
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
        </nav>
      </div> -->
      <div class="Search">
        <form>
          <input class="input_find" type="text" placeholder="Tìm kiếm" />
          <button class="btn_find" type="submit">Find</button>
        </form>
      </div>

      <br>
      <br>
      <!-- create table callhistory -->
      <div class="tabel-call-history">
        <table>
          <tr id="title-table">
            <th>ID</th>
            <th>Date Time</th>
            <th>AgenId</th>
            <th>Phone</th>
            <th>Call Offer</th>
            <th>Call Respond</th>
            <th>Business Hours</th>
          </tr>
          <tr>
            <td><a href="/history/1">1</a></td>
            <td>1/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0123456789</td>
            <td>True</td>
            <td>False</td>
            <td>True</td>
          </tr>
          <tr>
            <td><a href="/history/1">2</a></td>
            <td>2/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0954123575</td>
            <td>False</td>
            <td>True</td>
            <td>True</td>
          </tr>
          <tr>
            <td><a href="/history/1">3</a></td>
            <td>3/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0345684214</td>
            <td>False</td>
            <td>True</td>
            <td>False</td>
          </tr>
          <tr>
            <td><a href="/history/1">4</a></td>
            <td>4/1/2023 <br> 12:30:30</td>
            <td>1</td>
            <td>0945624152</td>
            <td>True</td>
            <td>False</td>
            <td>False</td>
          </tr>
        </table>
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
  

