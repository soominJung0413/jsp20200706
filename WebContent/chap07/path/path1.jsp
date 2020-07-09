<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Insert title here</title>
</head>
<body>
	<h1>path1 jsp</h1>
	<a href="path2.jsp">path2 jsp</a> <br />
	<a href="sub/sub2.jsp">sub2 jsp</a> <br />
	<a href="<%= request.getContextPath()  %>/chap07/path/path2.jsp"> path2 jsp</a> <br />
	<a href="<%= request.getContextPath()  %>/WEB-INF/webinf1.jsp"> web-inf1.jsp</a>
	<%= request.getContextPath()  %>
	<!-- 클라이언트 기준으로 생각해서 코딩하려면  request.getContextPath()  를 불여줘야함 -->
	
	<hr />
	<jsp:include page="/WEB-INF/webinf1.jsp"></jsp:include>
	<jsp:include page="path2.jsp"></jsp:include>
	<jsp:include page="sub/sub1.jsp"></jsp:include>
	<!-- 절대경로 -->
	
	<!-- 공개되지않는 jsp 파일이나 자원은 WEB-INF 폴더에 수납한다. 이폴더는 Server 에서만 접근할 수 있다. -->
	<jsp:include page="/chap07/path/path2.jsp"></jsp:include>
</body>
</html>