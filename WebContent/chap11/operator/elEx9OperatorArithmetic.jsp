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
		<h1>산술 연산자</h1>
		<form action="" method="post">
			num: <input type="number" name="num1" id="" /> <br />
			num2: <input type="number" name="num2" id="" />	 <br />
			<input type="submit" value="계산" />
		</form>
		<!--  산술연산시 null은 0으로 취급한다. NumberFormatException 주의 . -->
		
	<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	int n1 =0;
	int n2 =0;
	try{
		n1 = Integer.parseInt(num1);
		 n2 =Integer.parseInt(num2);
	}catch(Exception e){
		e.printStackTrace();
	}
	out.print(n1+n2);
	%>
		
		<h2>더하기</h2>
		<h3>${param.num1 + param.num2 }</h3>
		<h2>빼기</h2>
		<h3>${param.num1 - param.num2 }</h3>
		<h2>곱하기</h2>
		<h3>${param.num1 * param.num2 }</h3>
		<h2>나누기</h2>
		<h3>${param.num1 / param.num2 }</h3>
		<h3>${param.num1 div param.num2 }</h3>
		<h2>나머지</h2>
		<h3>${param.num1 mod param.num2}</h3>
		<h3>${param.num1 % param.num2 }</h3>
</body>
</html>