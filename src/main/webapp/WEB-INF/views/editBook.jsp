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
<form:form cssClass="form-style-9" class="form1" method="post" modelAttribute="bookForm" action="/books/save" id="form1">
    <input type="hidden" value="${bookForm.id}">
    <div style="-moz-box-sizing:content-box;
    -webkit-box-sizing:content-box;
    box-sizing:content-box;">
        <input type="text" width="10%" name="name" placeholder="Title" value="${bookForm.name}">
    </div>
    <div>
        <input type="date" name="releaseDate" placeholder="Release Date" value="${bookForm.releaseDate}"/>
    </div>
    <div style="-moz-box-sizing:content-box;
    -webkit-box-sizing:content-box;
    box-sizing:content-box;">
        <input type="text" name="circulation" placeholder="Count of Copies" value="${bookForm.circulation}">
    </div>
    <select name="authors" multiple>
        <c:forEach items="${authors}" var="author">
            <option <c:if test="${bookForm.isAuthorPresent(author)}"> selected</c:if> value="${author.id}"> Author's name: "${author.firstName} ${author.lastName}"</option>
        </c:forEach>
    </select>
    <p>
        <button class="add_author_form_button" type="submit">Save Book</button>
    </p>
</form:form>
</body>
</html>