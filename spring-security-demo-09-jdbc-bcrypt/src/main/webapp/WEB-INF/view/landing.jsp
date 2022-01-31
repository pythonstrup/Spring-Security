<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>

<head>
	<title>luv2code Landing Page</title>
</head>

<body>
	<h2>luv2code Landing Page</h2>
	<hr>
	
	<p>
		Welcome to the luv2code Landing Page! This is open to the public...
	</p>
	
	<hr>
	
	<p>
		<a href="${pageContext.request.contextPath}/employees">Access Secure Site (Require Login)</a>
	</p>
	
</body>

</html>