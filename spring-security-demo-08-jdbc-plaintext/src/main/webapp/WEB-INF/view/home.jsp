<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>
	<h2>luv2code Company Home Page - Yoohoo!!!</h2>
	<hr>
	
	<p>
		Welcome to the luv2code Company Home Page!
	</p>
	
	<hr>
	
	<!-- display user name and role -->
	<p>
		User: <security:authentication property="principal.username"/>
		<br><br>
		Role(s): <security:authentication property="principal.authorities"/>
	</p>
	
	<!-- Add a link to point to /leaders -->
	<security:authorize access="hasRole('MANAGER')">
		<p>
		<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
		(Only for Manager peeps)
	</p>
	</security:authorize>
	
	
	<!-- Add a link to point to /systems -->
	<security:authorize access="hasRole('ADMIN')">
		<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		(Only for Admin peeps)
	</p>
	</security:authorize>
	
	
	<hr>
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout"/>
	
	</form:form>
	
</body>

</html>