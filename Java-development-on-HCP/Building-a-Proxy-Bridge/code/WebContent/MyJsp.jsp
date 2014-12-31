<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="test.HelloWorldBean"%>
<%@ page import="javax.ejb.EJB"%>
<jsp:useBean id="myBean" scope="session" class="test.HelloWorldBean"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Bean</title>
</head>

<body>

</body>
</html>

<%
	try {
		out.println(myBean.sayHello());
	} 
	catch (Exception e) {
		out.println("error at  client " + e.getMessage());
	}
%>
