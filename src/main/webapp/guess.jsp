<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: luisdelgado
  Date: 2019-10-21
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Random r = new Random();
    int randNum = r.nextInt((100 - 1) + 1) + 1;
    if(request.getParameter("number")!=null)
    {
        if (Integer.parseInt(request.getParameter("number"))==randNum) {
            response.sendRedirect("/guessWin.jsp");
        }
    }
%>
<html>
<head>
    <title>Guessing Game</title>
</head>
<body>
<h1>Guess of a number between 1 & 100.</h1>
<h1><%= randNum%></h1>
<form action="/guess.jsp" method="post">
<input type="text" name="number" placeholder="Enter your guess">
    <button>Submit</button>
</form>

</body>
</html>
