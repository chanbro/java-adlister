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
    <title>Admin Profile</title>
</head>
<body>
<%
    String userName = (String)request.getAttribute("name");
    out.println("<b>"+"Hello, "+userName+"</b>");
%>

</body>
</html>
