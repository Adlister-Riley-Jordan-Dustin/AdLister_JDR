<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/indexStyle.jsp"/>
</head>
<body>
<div class="container">
    <h1 class="create-text">Create a new Ad</h1><%----%>
    <div class="create">
        <div class="create-two">
        <form action="/ads/create" method="post">
            <label for="title">Title</label>
            <div class="form-group">
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <label for="description">Description</label>
            <div class="form-group">
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
        </div>
    </div>
</div>
</body>
</html>
