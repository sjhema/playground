<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@page import="org.springframework.security.web.WebAttributes"%>
<%@page
	import="org.springframework.security.core.AuthenticationException"%>
<%@page
	import="org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter"%>
    
    	<%
			if (session.getAttribute(WebAttributes.ACCESS_DENIED_403) != null) {
			%>
				<div class="errorMessage" align="center">
				 <br />
				 <%out.println("Access Denied");session.removeAttribute(WebAttributes.ACCESS_DENIED_403);%>
					<!-- Reason: <%//=session.getAttribute(AbstractAuthenticationProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY)%>-->
				</div>
			<br/>
			<%		
			}
		%>
		
		<%
			if (session.getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION) != null) {
			%>
				<div class="errorMessage" align="center">
				 <br />
				 <%out.println("Authentication Failed. Please try again.");session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);%>
					<!-- Reason: <%//=session.getAttribute(AbstractAuthenticationProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY)%>-->
				</div>
			<br/>
			<%		
			}
		%>

	
	
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css"  />
<link rel="stylesheet" type="text/css" href="/resources/css/main.css"  />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

</head>
<body>
<div class="wrapper">

    <form:form class="form-signin" action="/login" >
     
      <h2 class="form-signin-heading">Login</h2>
      <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
      <br />
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
     <br />
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
    </form:form>
  </div>
</body>
</html>