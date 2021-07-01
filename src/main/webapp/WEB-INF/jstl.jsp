<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: naysamoreno
  Date: 6/30/21
  Time: 11:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setAttribute("lactoseIntolerant", true);

    List<String> dairyProducts = new ArrayList<>();

    dairyProducts.add("Milk");
    dairyProducts.add("Cheese");
    dairyProducts.add("Yogurt");
    dairyProducts.add("Ice Cream");
    dairyProducts.add("Cottage Cheese");

    request.setAttribute("dairyProducts", dairyProducts);
%>
<html>
<head>
    <title>JSPs: JSTL</title>
</head>
<body>
<c:choose>
    <c:when test="${lactoseIntolerant}">
        <h1>You are lactose intolerant! please dont buy any dairy products.</h1>
    </c:when>
    <c:otherwise>
        <h3>Dairy Products List</h3>
        <c:forEach items="${dairyProducts}" var="dairyProduct">
            <div>
                <p>${dairyProduct}</p>
            </div>
        </c:forEach>
    </c:otherwise>
        </c:choose>
</body>
</html>
