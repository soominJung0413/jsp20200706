<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--     <%@ page import="chap11.*" %>
<%
	Object o = request.getAttribute("myBean");
MyBean m = (MyBean)o;

%>

<%= m.getName() %>, <%= m.getId() %> --%>


<%--          el 사용         --%>

<h1> ${myBean.name } , ${myBean.id }</h1>

	<hr />
	<h3>pageContext 기본객체의 get프로퍼티를 이용한 출력</h3>
pageContext.request : >>>>>>>>>>>  ${pageContext.request}

	<hr />
	<h3>LocalName 메서드 EL사용</h3>
	pageContext.request.localName:  >>>>>>>>>>>>  ${pageContext.request.localName}