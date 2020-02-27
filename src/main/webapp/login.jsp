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
    <%@include file="partials/head.jsp" %>
</head>
<body>
<%--<%@include file="partials/head.jsp"%>--%>
<%@include file="partials/navbar.jsp" %>

<%--<form action="profile.jsp" method="post">--%>
<%--    <div class="container">--%>
<%--        <label for="username"><b>Username</b></label>--%>
<%--        <label>--%>
<%--            <input type="text" placeholder="Enter Username" name="username" required>--%>
<%--        </label>--%>

<%--        <label for="password"><b>Password</b></label>--%>
<%--        <label>--%>
<%--            <input type="password" placeholder="Enter Password" name="psw" required>--%>
<%--        </label>--%>

<%--        <button type="submit">Login</button>--%>
<%--    </div>--%>
<%--</form>--%>


<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username != null && username.equals("admin") && password != null && password.equals("password"))
        response.sendRedirect("profile.jsp?username=" + username);
%>

<form action="login.jsp" method="POST">
    <label for="username">Username</label>
    <input type="text" name="username" id="username">
    <label for="password">Password</label>
    <input type="password" name="password" id="password">
    <button type="submit">Log In</button>
</form>


</body>
</html>
