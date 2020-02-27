<%--
  Created by IntelliJ IDEA.
  User: chaneybrown
  Date: 2/26/20
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login</title>
</head>
<body>

<%
    String username = (String)request.getAttribute("name");
    String password = (String)request.getAttribute("password");
    request.getSession().setAttribute("name", username);
    request.getSession().setAttribute("password", password);
%>


<form action="profile.jsp" method="post">
    <div class="container">
        <label for="username"><b>Username</b></label>
        <label>
            <input type="text" placeholder="Enter Username" name="username" required>
        </label>

        <label for="password"><b>Password</b></label>
        <label>
            <input type="password" placeholder="Enter Password" name="psw" required>
        </label>

        <button type="submit">Login</button>
    </div>
</form>
</body>
</html>
