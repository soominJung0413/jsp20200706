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
	<h1>비교 연산자</h1>
	<form action="" method="post">
	num1 : <input type="text" name="num1" id="" value="${param.num1}" /> <br />
	num2: <input type="text" name="num2" id=""  value="${param.num2 }"/> <br />
	<input type="submit" value="비교" />
	</form>
	
	<h2>크다 greater than</h2>
	<h3>${param.num1 > param.num2}</h3>
	<h3>${param.num1 gt param.num2}</h3>
	<h4>\${"10" > "7" } : ${"10" >"7" }</h4><!-- 사전순으로 먼저인 글자가 크다. -->
	<h4>\${"10" + "7" } : ${"10" + "7" }</h4>
	<h4>\${"10" > 7 } : ${"10" > 7 }</h4><!-- 둘 중에 하나라도 수라면 수로 변환되어 계산한다. -->
	<h4>\${10 > "7" } : ${10 > "7" }</h4>
	
	
	<h2>작다 less than</h2>
	<h3>${param.num1 < param.num2 }</h3>
	<h3>${param.num1 lt param.num2 }</h3>
	
	<h2>크거나 같다 greater than equal</h2>
	<h3>${param.num1 >= param.num2 }</h3>
	<h3>${param.num1 ge param.num2 }</h3>
	
	<h2>작거나 같다 less than equal</h2>
	<h3>${param.num1 <= param.num2 }</h3>
	<h3>${param.num1 le paraem.num2}</h3>
	
	<h2>같다 equal</h2>
	<h3>${param.num1 == param.num2}</h3>
	<h3>${param.num1 eq param.num2}</h3>
	
	<h2>같지 않다. not equal</h2>
	<h3>${param.num1 != param.num2 }</h3>
	<h3>${param.num1 ne param.num2 }</h3>
</body>
</html>