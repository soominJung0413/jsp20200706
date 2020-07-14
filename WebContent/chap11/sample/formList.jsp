<%@page import="com.sun.glass.ui.Application"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="chap11.MyBean, java.util.*"%>
    <%
    request.setCharacterEncoding("utf-8");
    %>
    <jsp:useBean id="myBean" class="chap11.MyBean">
    	<jsp:setProperty name="myBean" property="*"/>
    </jsp:useBean>
    
    <%
   Object o = application.getAttribute("list");
    if(o == null){
    	List<MyBean> list = new ArrayList<>();
    	application.setAttribute("list", list);
    }else{
    	 List<MyBean> list = (ArrayList<MyBean>)o; 
    	    System.out.println("등록 로직 작동"+list.size()+" 가져온 Bean :"+myBean);
    	    list.add(myBean);
    	    application.setAttribute("list", list);
    }/* 
    List<MyBean> list = (ArrayList<MyBean>)o;
    MyBean item = (MyBean)application.getAttribute("myBean");
    list.add(item);
    application.setAttribute("list", list); */
    %>
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
<h1>Form</h1>
	<form action="" method="post">
		name : <input type="text" name="name" id="" /> <br />
		id : <input type="text" name="id" id="" /> <br />
		<input type="submit" value="제출" />
	</form>
		<hr />
		
	<h2>등록 정보</h2>
	<h3>ID : ${param.id }, NAME :  ${param.name }</h3>
	
	<ul>
		<%
		List<MyBean> list2 = (List<MyBean>)application.getAttribute("list");
		if(list2.size()>0){
		System.out.println(list2.size()+" , "+list2.get(0));
		for(int i =0; i<list2.size() ; i++){
			pageContext.setAttribute("i", i);
		%>
		<li>${list2[i].id} ${list2[i].name }</li>
		<%
		}
		}
		%>
	</ul>
</body>
</html>