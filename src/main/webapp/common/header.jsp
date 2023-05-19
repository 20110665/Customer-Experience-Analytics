<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<div id="headertitle">
	<h3 class="h3header">See how Digital Engagement enables you to
		meet your customers where they are.</h3>
</div>
<div id="header">
	<nav class="container">
		<a href="/" id="logo"><img
			src="https://prd-cdn-talkdesk.talkdesk.com/cdn-assets/latest/talkdesk/brand/main_brand/logo/talkdesk_logo_purple.svg"
			alt="Talkdesk" /></a> <u id="main-menu">
			<li class="active"><a href="/history">CALL HISTORY</a></li>
			<li class="active"><a href="/contact">CONTACT</a></li>
			<li class="active"><a href="/report">REPORT</a></li>
			<li class="active"><a href="/feedback">FEEDBACK</a></li> <c:if
				test="${user == null }">
				<div class="dropdown">
					<button class="dropbtn">
						Hello<br> Guest
					</button>
					<div class="dropdown-content">
						<a href="/login">Login</a> <a href="/signup">Signup</a> <a
							href="/forgotPassword">Forgot Password</a>
					</div>
				</div>
			</c:if> <c:if test="${user != null }">
				<div class="dropdown">
					<button class="dropbtn">
						Hello<br>${user.name}</button>
					<div class="dropdown-content">
						<c:if test="${user.role == 1 }">
							<a href="/admin/agent">Manager Page</a>
						</c:if>
						<a href="/profile/${user.id }">Profile</a> <a href="/logout">Logout</a>
					</div>
				</div>
			</c:if>
	</nav>
</div>

<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {

		var currentUrl = window.location.href;
		var url = new URL(currentUrl);
		var path = url.pathname;
		var textUrl = '';

		$('#main-menu li a').each(function() {
			if ($(this).attr('href') === path) {
				textUrl = $(this).text().trim();
				return false; // Dừng vòng lặp nếu tìm thấy mục
			}
		});

		// Lấy mục đang được chọn từ URL hoặc cách khác
		var activeMenuItem = textUrl; // Thay đổi giá trị tùy theo mục đang được chọn

		// Tìm mục đang được chọn trong menu và thêm lớp 'active'
		var menuItems = document.querySelectorAll('#main-menu li');
		menuItems.forEach(function(item) {
			var menuItemText = item.querySelector('a').textContent.trim();
			if (menuItemText === activeMenuItem) {
				item.classList.add('active');
			} else {
				item.classList.remove('active');
			}
		});

	});
</script>

