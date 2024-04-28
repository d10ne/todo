<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <meta charset="UTF-8">
            <title>Редактирование</title>
    </head>
    <body>
        <%@ include file="parts/header.jsp" %>
        <div class="container mt-5 mb-5">
            <c:forEach items="${task}" var="task">
                <form method="post">
                    <input name="title" type="text" value="${task.title}" class="form-control"><br>
                    <textarea name="description" value="${task.description}" class="form-control"></textarea><br>
                    <button type="submit" class="btn btn-success">Сохранить изменения</button>
                </form>
            </c:forEach>
        </div>
    </body>
</html>