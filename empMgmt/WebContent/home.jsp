<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Management</title>
<meta name="robots" content="noindex, nofollow">
<!-- Include CSS File Here -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	     <jsp:include page="header.jsp"></jsp:include>
     <jsp:include page="_menu.jsp"></jsp:include>
     <h1 class="page-header">Home</h1>
     <div style="padding: 5px;">
 
   <a href="${pageContext.request.contextPath}/" class="btn btn-primary" role="button">Home</a>
   
   <a href="${pageContext.request.contextPath}/login" class="btn btn-success" role="button">Login</a>
    
</div>
     
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
  <body>
     <jsp:include page="header.jsp"></jsp:include>
     <jsp:include page="menu.jsp"></jsp:include>
      <h1 class="page-header">Home Page</h1>
      
      <div style="padding: 5px;">
 
   <a href="${pageContext.request.contextPath}/" class="btn btn-primary" role="button">Home</a>
   
   <a href="${pageContext.request.contextPath}/login" class="btn btn-success" role="button">Login</a>
    
</div>
 
     <%-- <jsp:include page="_footer.jsp"></jsp:include> --%>
 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>