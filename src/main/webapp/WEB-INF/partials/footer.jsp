<%--
  Created by IntelliJ IDEA.
  User: jordanwitt
  Date: 1/10/23
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<footer class="footers">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <ul class="foot navbar-nav navbar-right">
            <%--<input type="text" id="search" placeholder="search">--%>
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
            <li><a href="/register">Register</a></li>
            <li>
                <%--<input formaction="AdsIndexServlet.java" type="search" formmethod="post" id="searchBar" name="adBar" placeholder="Search for Ads">
                <button> Search </button>--%>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</footer>
</body>
</html>
