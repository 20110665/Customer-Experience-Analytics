<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<div id="headertitle">
	<h3>
	  See how Digital Engagement enables you to meet your customers where
	  they are.
	</h3>
</div>
<div id="header">
	<nav class="container">
	  <a href="" id="logo"
		><img
		  src="https://prd-cdn-talkdesk.talkdesk.com/cdn-assets/latest/talkdesk/brand/main_brand/logo/talkdesk_logo_purple.svg"
		  alt="Talkdesk"
	  /></a>
	  <u id="main-menu">
		<li class="active"><a href="/history">CALL HISTORY</a></li>
		<li><a href="/contact">CONTACT</a></li>
		<li><a href="/report">REPORT</a></li>
		<li><a href="/feedback">FEEDBACK</a></li>
		<li><a href="/profile">ManagementProfile</a></li>
	  </u>
	</nav>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
  <script>
    $(document).ready(function () {
      $("#main-menu li").removeClass("active");
      $("#main-menu li").click(function () {
        $("#main-menu li").removeClass("active");
        $(this).addClass("active");

		let id_tab_content = $(this).children('a').attr('href');
        // alert(id_tab_content);
        $('.tab-content-item').hide();
        $(id_tab_content).fadeIn();
        return false;
      });
    });
  </script>

