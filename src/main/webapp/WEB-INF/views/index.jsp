<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Test project </title>
    <script src="js/main.js"></script>
    <c:url value="css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
<h1>This is the Authors page:</h1>
<p><b>To view the list of all authors, please click on the button below: </b></p>
<button class="button" onclick="openLink()">View all authors</button></p>
<img src="https://malwarwickonbooks.com/wp-content/uploads/2017/09/classic-authors.jpeg">
</body>
</html>