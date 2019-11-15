<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Test project </title>
    <script src="js/main.js"></script>
    <c:url value="css/main.css" var="jstlCss"/>
    <link href="${jstlCss}" rel="stylesheet"/>

</head>
<body>
<h1>This is the Authors page:</h1>
<p><b>To view the list of all authors, please click on the button below: </b></p>
<p><b>If you want to move to the Books page, please click on the button right to "All authors button":</b></p>
<div id="container">
    <button class="button" onclick="openLink()">View all authors</button>
    <div class="divider"></div>
    <button class="buttonToBooks1" onclick="previousLinkBooks()">To the Books page</button>
</div>
<p><img src="https://malwarwickonbooks.com/wp-content/uploads/2017/09/classic-authors.jpeg"></p>
</body>
</html>