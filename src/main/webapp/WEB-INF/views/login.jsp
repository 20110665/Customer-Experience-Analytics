<!--thiết kế lại trang đăng nhập của talkdesk-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<body>
<!--một cái khung ở giữa-->
    <div class="container">
        <!--logo của talkdesk-->
        <div class="logo">
            <h1 class="logo1">talkdesk</h1>
            <h1 class="logoenter">Enter your credentials to login</h1>
            <!-- css logo ở giữa-->
                     
        </div>
        <!--khung nhập email và mật khẩu-->
        <div class="form">
            <form action="/loginAct" method="post">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" placeholder="Email" required>
                <div class="forgot">
                    <label for="password">Password</label>
                    <a href="#">Forgot password?</a>
                </div>
                <input type="password" name="password" id="password" placeholder="Password" required>
                <div class="submit">
                    <button href "/" type="submit">Login</button>
                </div>
            </form>
        </div>
        <!--kẻ 1 đường ngang có chữ "or" ở giữa-->
        <div class="or">
            <div class="line1"></div>
            <span>OR</span>
            <div class="line2"></div>
        </div>
        <!--or login with google-->
        <div class="google">
            <a href="#">
                <img src="images/google.png" alt="google">
                <span>Login with Google</span>
            </a>
        </div>
        <div class="donthave">
            <a href="signup">
                <span>Don't have an account</span>
            </a>
        </div>
    </div>
</body>