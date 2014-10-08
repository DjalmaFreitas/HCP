<%@page import="javax.naming.InitialContext,javax.naming.Context,com.sap.cloud.account.TenantContext" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SAP HCP - Tenant Context Demo Application</title>
</head>

<body>
<h2> Welcome to the SAP HANA Cloud Platform Tenant Context demo application</h2>
<br></br>

	<%
		String currentTenantId = "";
		try {
			InitialContext ctx = new InitialContext();
			Context envCtx = (Context) ctx.lookup("java:comp/env");
			TenantContext tenantContext = (TenantContext) envCtx
					.lookup("TenantContext");
			currentTenantId = tenantContext.getTenantId();
		} catch (Exception e) {
			out.println("error at client");
		}
	%>
  <p><font size="5"> The application was accessed on behalf of a tenant with an ID: <i>
					<%= currentTenantId  %> </i></font></p>
</body>
</html>
