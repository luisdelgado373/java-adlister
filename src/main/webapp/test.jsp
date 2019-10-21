<%--
  Created by IntelliJ IDEA.
  User: luisdelgado
  Date: 2019-10-21
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Practice</title>
</head>
<body>
<h1>Enter some text below</h1>

<form action="/test2.jsp" method ="post">
    <input type="text" name="practice" placeholder="Enter text">
    <button>Submit</button>
</form>
<%@ include file="partials/footer.html"%>
</body>
</html>