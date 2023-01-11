<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/indexStyle.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbarProfile.jsp"/>
<div class="container">
    <div class="profile">
        <h1 class="welcome">Welcome, ${sessionScope.user.username}!</h1>
        <div>
            <h2 class="profile-info">Profile Information</h2>
            <h4 class="username">Username: ${sessionScope.user.username}</h4>
            <h4 class="email">Email: ${sessionScope.user.email}</h4>
            <form action="/profile" method="post">
                <label for="updateUsername">Update username</label>
                <input type="text" name="updateUsername" id="updateUsername">
                <br>
                <label for="updateEmail">Update Email</label>
                <input type="email" name="updateEmail" id="updateEmail">
                <br>
                <input type="submit" value="update">

            </form>
        </div>
    </div>
    <div class="ads" id="ads-three">
    <c:forEach var="ad" items="${ads}">
        <div class="ads" id="ads">
            <h2>${ad.title}</h2>
            <hr>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
    </div>
</div>

</body>
</html>