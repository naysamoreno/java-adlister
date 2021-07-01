<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <title><%= "Hello page" %>
    </title>
</head>
<body>
<h1>Hello ${name}</h1>

<form action="hello" method="post">
    <label for="name">Enter name:</label>
    <input type="text" name="name" id="name">
    <input type="submit">
</form>
</body>
</html>