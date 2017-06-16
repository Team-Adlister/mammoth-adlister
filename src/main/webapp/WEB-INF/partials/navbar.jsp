<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/index.jsp">HL</a>
        </div>
        <form class="navbar-form navbar-left" action="/search" method="get">
            <div class="form-group">
                <input name="search" id="search" type="text" class="searchBar form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${sessionScope.user == null}">
            <li><a href="/login">Login</a></li>
            <li><a href="/register">Register</a></li>
            </c:if>
            <c:if test="${sessionScope.user != null}">
                <li><a href="/ads/create">Create Ad</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:if>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
