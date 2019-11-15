<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add author</title>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css' />"/>
    <h1>Add book to the book list: </h1>
</head>
<body>
<form:form cssClass="form-style-9" class="form1" method="post" modelAttribute="bookForm" action="/test" id="form1">
    <p><form:input path="name" type="text" placeholder="Book Title"/></p>
    <p><form:input path="releaseDate" type="text" placeholder="Release Date"/></p>
    <p><form:input path="circulation" type="text" placeholder="Circulation"/></p>
    <button class="add_author_form_button" type="submit">Add Book</button>
</form:form>
</body>
</html>