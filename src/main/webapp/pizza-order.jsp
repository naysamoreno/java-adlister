<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Select your order" />
    </jsp:include>

</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<form>
    <div class="form-row align-items-center">
        <div class="col-auto my-1">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Preference</label>
            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                <option selected>Choose toppings</option>
                <option value="1">pepperoni</option>
                <option value="2">Sausage</option>
                <option value="3">Three cheese</option>
            </select>
        </div>
        <div class="col-auto my-1">
            <div class="custom-control custom-checkbox mr-sm-2">
                <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                <label class="custom-control-label" for="customControlAutosizing">Remember my preference</label>
            </div>
        </div>
        <div class="col-auto my-1">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>
</form>
</body>
</html>