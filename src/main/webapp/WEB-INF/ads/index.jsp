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
<h1 class="logo">JUNK LISTER</h1>
<p class="not-that">not that kind....</p>
<div class="container">
    <div class="description">
        <div class="about">
            <img src="${pageContext.request.contextPath}/img/Garage-sale.png" alt="" style="width: 100%">
            <h2>what we do</h2>
            <hr>
            <p>At our junk store, we specialize in providing a unique shopping experience for those who appreciate the beauty in the unique and unusual. We offer a wide range of reclaimed, vintage, and one-of-a-kind items that are sure to add character and personality to any space.</p>
        </div>
        <div class="sell">
            <img src="${pageContext.request.contextPath}/img/l9qx5sefaygqnksstkrt.jpeg" alt="" style="width: 100%">
            <h2>what we sell</h2>
            <hr>
            <p>At our junk store, we offer a unique and constantly changing selection of items that will appeal to those who appreciate the beauty in the unique and unusual. We have a wide range of reclaimed, vintage and one-of-a-kind items available. Whether you are looking for something specific or just browsing, we're sure you'll find something you love among our selection of hand-picked and carefully curated items.</p>
        </div>
        <div class="who">
            <img src="${pageContext.request.contextPath}/img/Garage-sale.png" style="width: 100%">
            <h2>who we are</h2>
            <hr>
            <p>We are a team of passionate individuals who believe that beauty can be found in the most unexpected places. Our store is a treasure trove of unique and one-of-a-kind items that have been carefully selected and curated. Each piece has a story to tell and we take pride in giving new life to these forgotten items.</p>
        </div>
    </div>
</div>
<hr>
<div class="tagline">
    <div class="tag">
        <h2 class="tagTxt">-ONE PERSONS JUNK IS ANOTHER PERSONS TREASURE-</h2>
    </div>
</div>
<hr style="width: 400px">
<p class="listings">VIEW LISTINGS BELOW</p>
<div class="container-two">
    <div class="ads-direction">
        <div class="ads" id="ads-two">
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
<hr>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<%--THIS IS A COMMENT--%>
</body>
</html>
