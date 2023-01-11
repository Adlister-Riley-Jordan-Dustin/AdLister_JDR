<jsp:include page="indexStyle.jsp"/>
<nav class="navbar">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="/ads">Junk Lister</a>
    </div>

    <ul class="nav navbar-nav navbar-right">
      <%--<input type="text" id="search" placeholder="search">--%>
      <form method="POST" action="/ads/search">
        <label for="searchBar"> Ad Search</label>
        <input  type="search" id="searchBar" name="adBar" placeholder="Search for Ads">
      </form>
      <li><a href="/ads">Home</a></li>
      <li><a href="/profile">Profile</a></li>
      <li><a href="/logout">Logout</a></li>
      <li><a href="/ads/create">Create</a></li>
      <li>
        <%--<input formaction="AdsIndexServlet.java" type="search" formmethod="post" id="searchBar" name="adBar" placeholder="Search for Ads">
        <button> Search </button>--%>
      </li>
    </ul>

  </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<hr>
