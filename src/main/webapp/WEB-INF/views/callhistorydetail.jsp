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

      <!-- create table callhistory -->
      <div class="tabel-call-history">
        <table>
          <tr>
            <td>ID</td>
            <td>1</td>
          </tr>
          <tr>
            <td>Call ID</td>
            <td>1</td>
          </tr>
          <tr>
            <td>Type Call</td>
            <td>Complant</td>
          </tr>
          <tr>
            <td>Time On Phone</td>
            <td>12:30</td>
          </tr>
          <tr>
            <td>Time On Queue</td>
            <td>00:30</td>
          </tr>
          <tr>
            <td>Time abandoned</td>
            <td>01:00</td>
          </tr>
          <tr>
            <td>Call Content</td>
            <td><button id="play">PLAY</button></td>
          </tr>
          <tr>
            <td>Feed Back</td>
            <td>True</td>
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

