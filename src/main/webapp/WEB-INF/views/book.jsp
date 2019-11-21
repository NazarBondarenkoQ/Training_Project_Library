<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>List of all authors</title>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/mindmup-editabletable.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css' />"/>
</head>
<body>
<table id="books" border="5" , style="border-style: double" width="85%">
    <thead style="background-color: aquamarine">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Release Date</th>
        <th>Circulation</th>
        <th>Authors</th>
        <th>Actions</th>
    </tr>
    </thead>
    <c:forEach items="${books}" var="book" varStatus="status">
        <tr style="background-color: beige">
            <td data-editable="false">${status.count}</td>
            <td id="name_${book.id}"><c:out value="${book.name}"/></td>
            <td id="releaseDate_${book.id}" class="uneditable"><c:out value="${book.releaseDate}"/></td>
            <td id="circulation_${book.id}"><c:out value="${book.circulation}"/></td>
            <c:if test="${book.authors.size() > 0}"><c:set var="lastname" value="${book.authors.get(0).lastName}"/></c:if>
            <td data-editable="false"><c:if test="${book.authors.size() > 0}"> <c:out value="${book.authors.get(0).firstName} ${lastname}"/>
            </c:if></td>
            <td data-editable="false"><button onclick="goToEditBookPage(${book.id})">Edit</button></td>
        </tr>
    </c:forEach>
    <script>
        $('#books').editableTableWidget();

        $('#books td').on('change', function(evt, newValue) {
            var id = $(this).attr('id');

            $.ajax({
                url: "/books/ajax",
                type: "POST",
                data:JSON.stringify({ id: id, value: newValue }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(){
                    alert( "Changes saved");
                }});
        });
    </script>
</table>

<div>
    <button onclick="previousLinkBooks()" class="previousBook">&laquo; Back to landing page</button>
    <button onclick="goToAddBookPage()" class="go_to_button"> Add a new book</button>
</div>

</body>
</html>