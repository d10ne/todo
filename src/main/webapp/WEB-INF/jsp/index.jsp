<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <meta charset="UTF-8">
            <title>Список заданий</title>
    </head>
    <body>
        <%@ include file="parts/header.jsp" %>
        <div class="container mt-5 mb-5">
            <c:forEach items="${tasks}" var="task">
                <div class="alert alert-info mt-2">
                    <h3><c:out value="${task.title}"/></h3>
                    <p><c:out value="${task.description}"/></p>
                    <form method="post" action="${task.id}/delete">
                        <button type=submit class="btn btn-danger">Удалить</button>
                    </form>
                    <form method="post" action="${task.id}/details">
                        <button type=submit class="btn btn-warning">Редактировать</button>
                    </form>
                </div>
            </c:forEach>
        </div>
    </body>
</html>