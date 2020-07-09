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
	<div class="container">
		<form action="processJoinning.jsp" method="post">
			<table border="1" width="500px" heigh="300px" class="table table-dark">
				<tr>
					<td width="200px" align="center">
					<label for="">아이디</label><input type="text" class="form-control" name="id" id=""/>
					</td>
					<td width="200px" align="center">
					<label for="">암호</label> <input type="password" class="form-control" name="password" id="" />
					</td>
				</tr>
				<tr>
					<td align="center">
					<label for="">이름</label><input type="text" class="form-control" name="name" id="" />
					</td>
					<td align="center">
					<label for="">이메일</label><input type="email" class="form-control" name="email" id="" />
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" class="btn btn-outline-secondary" value="회원가입" />
					</td>
				</tr>
			</table>
		</form>
		</div>
</body>
</html>