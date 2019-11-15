<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Test project</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css' />"/>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</head>
<body>
<h1>This is the Books page:</h1>
<p><b>To view the list of all books, please click on the button below: </b></p>
<p><button class="button1" onclick="openLinkBooks()">View all books</button></p>
<img src="https://www.rd.com/wp-content/uploads/2017/11/How-Much-Does-a-Book-Need-to-Sell-to-Be-a-Bestseller-509582812-Billion-Photos-1024x683.jpg">
</body>
</html>