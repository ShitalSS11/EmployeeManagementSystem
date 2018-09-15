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
 
      <h1 class="page-header">Edit Employee</h1>
      <c:if test="${not empty user}">
         <form method="POST" action="${pageContext.request.contextPath}/editEmployee">
            <input type="hidden" name="id" value="${user.id}" />
            <table border="0" class="table table-striped table-bordered table-hover table-condensed">
              <div class="form-group">
               <tr class="success">
                  <td>Username</td>
                  <td>${user.userName}</td>
               </tr>
               </div>
           <div class="form-group">
          <label>User Name</label>
          <input type="text" class="form-control" placeholder="Add Name" name="userName" value="${user.userName}">
        </div>
        <div class="form-group">
          <label>Password</label>
          <input type="text" class="form-control" placeholder="Add Password" name="password" value="${user.password}" >
        </div>
               <tr>
                  <td colspan = "2">
                <button type="submit" class="btn btn-success">Submit</button>
                <a href="${pageContext.request.contextPath}/empprofile" class="btn btn-danger" role="button">Cancel</a>
                  </td>
               </tr>
            </table>
         </form>
      </c:if>
       <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
 	</body>
 	</html>