<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<body>
    <div class="header">
        <h1>Sign up to Talkdesk, Inc.</h1>
    </div>
    <div class="container">
        <div class="sign-in-with">
            <div class="google">
                <a href="#">
                    <img src="images/twitter.png" alt="google">
                    <span>Sign up with Twitter</span>
                </a>
            </div>
            <div class="google">
                <a href="#">
                    <img src="images/facebook.png" alt="google">
                    <span>Sign up with Facebook</span>
                </a>
            </div>
            <div class="google">
                <a href="#">
                    <img src="images/google.png" alt="google">
                    <span>Sign up with Google</span>
                </a>
            </div>
        </div>
        <div class="line"></div>
        <div class="form">
            <form action="" method="post">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" placeholder="Email">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="Password">
                <div class="submit">
                    <button type="submit"><a style="color: #FFF;" href="login">Sign up</a></button>
                </div>
            </form>
        </div>
        
    </div>
    <div class="forgot">
        <div class="k1">
            <p>New to talkdesk, Inc.? <a href="login">Sign up</a></p>
            <p>Have you emailed us? <a href="login">Get a password</a></p>
            <p class="p2">If you've communicated with our support staff through email previously,
                you're alraedy registered. You probably don't have a password yet,
                through.
            </p>
        </div>
        <div class="k2">
            <a href="login">I am an Agent</a>
            <a href="login">Forgot my password</a>
            <div class="k2-2"></div>
        </div>
    </div>
</body>