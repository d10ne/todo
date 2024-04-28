<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <meta charset="UTF-8">
    <title>Добавление задания</title>
</head>
    <body>
        <%@ include file="parts/header.jsp" %>
        <div class="container mt-5 mb-5">
            <form method="post">
                <label>Введите название:</label>
                <input type="text" name="title" class="form-control"/><br>
                <label>Введите описание:</label><br>
                <textarea type="text" name="description" class="form-control"></textarea><br>
                <button type=submit class="btn btn-success">Добавить задание</button><br>
            </form>
        </div
    </body>
</html>