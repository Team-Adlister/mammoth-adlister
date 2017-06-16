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

<div class="container">
    <h1>Ad Detail:  </h1>

        <div class="col-md-6">
            <h5>Title:  ${ad.title}</h5>
            <h5>Description:  ${ad.description}</h5>
        </div>
</div>

</body>
</html>
