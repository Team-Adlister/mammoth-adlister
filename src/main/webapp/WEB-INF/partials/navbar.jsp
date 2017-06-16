<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/index.jsp">HL</a><%--TODO: change link--%>
        </div>
        <form class="navbar-form navbar-left">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <ul class="nav navbar-nav navbar-right">

            <c:if test="${sessionScope.user == null}">
            <li><a href="/login">Login</a></li>
            <li><a href="/register">Register</a></li>
            </c:if>


            <c:if test="${sessionScope.user != null}">
                <li><a href="/logout">Logout</a></li>
            </c:if>

        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
