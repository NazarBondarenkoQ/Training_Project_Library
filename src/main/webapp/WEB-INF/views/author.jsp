<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>List of all authors</title>
</head>
<body>
<table border="5", style="border-style: double" width="85%">
<thead style="background-color: lightgoldenrodyellow">
<tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Birthday</th>
    <th>Country</th>
    <th>City</th>
</tr>
</thead>
<c:forEach items="${authors}" var="author" varStatus="status">
    <tr>
        <td>${status.count}</td>
        <td><c:out value="${author.firstName}" /></td>
        <td><c:out value="${author.lastName}" /></td>
        <td><c:out value="${author.birthDate}" /></td>
        <td><c:out value="${author.country}" /></td>
        <td><c:out value="${author.city}" /></td>
    </tr>
</c:forEach>
</table>
</body>
</html>