<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/indexStyle.jsp" />
<div class="center">
    <h1>
        <span>Things</span>

        <span>Things</span>
        <span>Things</span>

    </h1>
</div>
<div class="center-two">
    <h1>
        <span>some things for sale</span>
        <span>some things for sale</span>
        <span>some things for sale</span>
    </h1>
</div>
<div class="center-three" id="center-two">
    <h1 class="things-two">
        <span>all of the things</span>
        <span>all of the things</span>
        <span>all of the things</span>
    </h1>
</div>
<div class="container">
    </div>
    <c:forEach var="ad" items="${ads}">
        <div class="ads" id="ads">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>
<%--THIS IS A COMMENT--%>
</body>
</html>
