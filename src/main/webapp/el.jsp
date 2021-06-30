<%--
  Created by IntelliJ IDEA.
  User: naysamoreno
  Date: 6/30/21
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // setting a request attribute would be done in a servlet
    request.setAttribute("userRole", "admin");

    String message;
    switch (request.getAttribute("userRole").toString()) {
        case "admin":
            message = " administator";
            break;
        case "s_admin":
            message = "active user";
            break;
        default:
            message = "unknown status";
    }
    request.setAttribute("userRoleMessage", message);
%>
<html>
<head>
    <title>Expression Language</title>
</head>
<body>
<h1>${userRole}</h1>
<h3>User Status: ${userRoleMessage}</h3>


<%--We would use the following syntax to refer to our user instance that we have set in our servlet--%>
<%--<h2>Username = ${user.username}</h2>--%>
<%--<p>User age = ${user.age}</p>--%>
<%--<p>User email = ${user.email}</p>--%>


</body>
</html>
