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
    <title>Profile</title>

</head>
<body>
<%--<%@include file="partials/head.jsp" %>--%>
<%@include file="partials/navbar.jsp" %>

<%
    String username = request.getParameter("username");
//    String password = request.getParameter("password");
    if (username.equals("admin")) {
        response.getWriter().println("<h1>Hello, " + username + "!</h1>");
    } else {
        RequestDispatcher req = request.getRequestDispatcher("login.jsp");
        req.include(request, response);
    }
%>

</body>
</html>
