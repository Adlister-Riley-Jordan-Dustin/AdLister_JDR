<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<jsp:include page="/WEB-INF/partials/indexStyle.jsp"/>

<div class="container">
    <div class="description">
        <div class="about">
            <img src="${pageContext.request.contextPath}/WEB-INF/img/IMG_1251.jpeg">
            <h2>what we do</h2>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor eligendi excepturi facilis fugiat minus
                nisi perferendis tempore ullam! Accusamus accusantium esse ex impedit magnam necessitatibus odit quas
                ratione sequi ullam.</p>
        </div>
        <div class="sell">
            <img src="${pageContext.request.contextPath}/WEB-INF/img/IMG_1251.jpeg">
            <h2>what we sell</h2>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur dignissimos distinctio et, ex
                exercitationem id mollitia perspiciatis, qui rem sequi sint, voluptatibus. Consequuntur ducimus eligendi
                iusto nam qui rem suscipit!</p>
        </div>
        <div class="who">
            <img src="${pageContext.request.contextPath}/WEB-INF/img/IMG_1251.jpeg">
            <h2>who we are</h2>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, commodi consectetur ea enim esse, fuga
                magnam necessitatibus nobis, quaerat quia repellat rerum temporibus vel voluptate voluptatem. Corporis
                quibusdam recusandae sed.</p>
        </div>
    </div>
</div>

<div class="container-two">
    <div class="ads-direction">
        <div class="ads">
            <c:forEach var="ad" items="${ads}">
                <div class="ads" id="ads">
                    <h2>${ad.title}</h2>
                    <hr>
                    <p>${ad.description}</p>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<footer>

</footer>
<%--THIS IS A COMMENT--%>
</body>
</html>
.description{
margin-top: 30px;
display: flex;
flex-direction: row;
padding:30px;
}