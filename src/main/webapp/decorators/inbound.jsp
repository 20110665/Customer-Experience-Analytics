<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url value="/resources/" var="URL1"></c:url>
<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${URL1}css/inbound.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
    <title>Inbound</title>
    
<!-- Site meta -->

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>

	<%@ include file="/common/header.jsp"%>
	<%@ include file="/common/header2.jsp"%>



	<!-- body -->
	<sitemesh:write property='body'></sitemesh:write>
	<!-- body -->

	<!--=== Footer v4 ===-->

	<%-- <jsp:include page="/common/footer.jsp"></jsp:include> --%>

	<!--=== End Footer v4 ===-->




</body>
</html>