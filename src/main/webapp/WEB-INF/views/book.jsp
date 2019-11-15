<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>List of all authors</title>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css' />"/>
</head>
<body>
<table border="5" , style="border-style: double" width="85%">
    <thead style="background-color: aquamarine">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Release Date</th>
        <th>Circulation</th>
    </tr>
    </thead>
    <c:forEach items="${books}" var="book" varStatus="status">
        <tr style="background-color: beige">
            <td>${status.count}</td>
            <td><c:out value="${book.name}"/></td>
            <td><c:out value="${book.releaseDate}"/></td>
            <td><c:out value="${book.circulation}"/></td>
        </tr>
    </c:forEach>
</table>
<div>
    <button onclick="previousLinkBooks()" class="previousBook">&laquo; Back to landing page</button>
    <button onclick="goToAddBookPage()" class="go_to_button"> Add a new book</button>
</div>
</body>
</html>