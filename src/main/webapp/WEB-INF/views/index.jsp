<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test project </title>
</head>
<body>
<h1>This is the Authors page:</h1>
<p><b>To view the list of all authors, please click on the button below: </b></p>
<button class="button" onclick="openLink()">View all authors</button></p>
<script>
    function openLink() {
        open("http://localhost:8080/authors/all");
    }
</script>
<style>
    .button {
        background-color: lightblue;
        border: none;
        color: white;
        padding: 15px 25px;
        text-align: center;
        font-size: 16px;
        cursor: pointer;
    }

    .button:hover {
        background-color: deepskyblue;
    }
</style>
<img src="https://malwarwickonbooks.com/wp-content/uploads/2017/09/classic-authors.jpeg">
</body>
</html>