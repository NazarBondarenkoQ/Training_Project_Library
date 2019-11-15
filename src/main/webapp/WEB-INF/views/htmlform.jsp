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
    <h1>Add author to the author list: </h1>
</head>
<body>
<form:form class="form" cssClass="form-style-9" method="post" modelAttribute="authorForm" action="/save" id="form">
    <p><form:input path="firstName" type="text" placeholder="First Name"/></p>
    <p><form:input path="lastName" type="text" placeholder="Last Name"/></p>
    <p><form:input path="birthDate" type="text" placeholder="Date of Birth"/></p>
    <p><form:input path="country" type="text" placeholder="Country"/></p>
    <p><form:input path="city" type="text" placeholder="City"/></p>
    <p>
        <button class="add_author_form_button" type="submit">Add author</button>
    </p>
</form:form>
</body>
</html>