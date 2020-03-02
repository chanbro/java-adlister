<%--
  Created by IntelliJ IDEA.
  User: chaneybrown
  Date: 3/2/20
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>View Ads</title>
</head>
<body>
<h1>Here are all the ads:</h1>

<jsp:useBean id="ads" scope="request" type="java.util.List"/>
<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
    </div>
</c:forEach>

</body>
</html>
