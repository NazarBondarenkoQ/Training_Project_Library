<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test project</title>
</head>
<body>
<h1>This is the Books page:</h1>
<p><b>To view the list of all books, please click on the button below: </b></p>
<p><button class="button" onclick="openLink()">View all books</button></p>
<script>
    function openLink() {
        open("http://localhost:8080/books/all");
    }
</script>
<style>
    .button {
        background-color: sandybrown;
        border: none;
        color: white;
        padding: 15px 25px;
        text-align: center;
        font-size: 16px;
        cursor: pointer;
    }

    .button:hover {
        background-color: coral;
    }
</style>

<img src="https://www.rd.com/wp-content/uploads/2017/11/How-Much-Does-a-Book-Need-to-Sell-to-Be-a-Bestseller-509582812-Billion-Photos-1024x683.jpg">

</body>
</html>