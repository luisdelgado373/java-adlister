<%--
  Created by IntelliJ IDEA.
  User: luisdelgado
  Date: 2019-10-21
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Practice</title>
</head>
<body>
<h1>Your entered text is: </h1>

<%= request.getParameter("practice")%>
<%@ include file="partials/footer.html"%>
</body>
</html>
