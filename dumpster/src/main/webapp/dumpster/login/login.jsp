<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
    <form:form class="form-signin">       
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