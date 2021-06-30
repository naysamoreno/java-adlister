<%--
  Created by IntelliJ IDEA.
  User: naysamoreno
  Date: 6/30/21
  Time: 9:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%! int instanceCount = 0; %>

<%
 int localCount = 1;
 localCount += 1;
 instanceCount +=1;
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Tags</title>
<%@include file="partials/head.jsp"%>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
<h1> Hello there!!</h1>

<h2>This local count is: <%=localCount%></h2>
<h2>This instance count is: <%=instanceCount%></h2>

<%@include file="partials/national-parks.jsp"%>
</body>
</html>
