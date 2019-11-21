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
    <thead style="background-color: lightgoldenrodyellow">
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Birthday</th>
        <th>Country</th>
        <th>City</th>
        <th>Books</th>
        <th>Action</th>
    </tr>
    </thead>
    <c:forEach items="${authors}" var="author" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td><c:out value="${author.firstName}"/></td>
            <td><c:out value="${author.lastName}"/></td>
            <td><c:out value="${author.birthDate}"/></td>
            <td><c:out value="${author.country}"/></td>
            <td><c:out value="${author.city}"/></td>
            <td>
            <c:if test="${author.books.size() > 0}">
                <c:forEach items="${author.books}" varStatus="book_index">
                <c:set var="books" value="${author.books.get(book_index.index).name}"/><c:out value="${books}, "/>
                </c:forEach></c:if>
            </td>
            <td><button onclick="goToEditAuthorPage(${author.id})">Edit</button></td>
        </tr>
    </c:forEach>
</table>
<div>
    <button onclick="previousLink()" class="previous">&laquo; Back to landing page</button>
    <button onclick="goToAddAuthorPage()" class="go_to_button"> Add a new author</button>
</div>
</body>
</html>