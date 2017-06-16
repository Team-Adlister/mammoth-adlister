<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username} you're log in as a ${sessionScope.role}!</h1>

        <h2>Here Are all the ads!</h2>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6 ">
                <a class="text-danger" href="/adsDetail?Id=${ad.id}"><h2>${ad.title} </h2></a>
                <p>${ad.description}</p>
            </div>
        </c:forEach>

    </div>

</body>
</html>
