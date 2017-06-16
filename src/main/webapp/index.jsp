<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container text-center">
        <h1>Homeschool Lifeline</h1>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-6">
                    <h3 class="text-center">Parent</h3>
                    <img class="media-object" src="/img/parent-photo.jpg" alt="Parent">
                    <p class="text-justify"><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur esse fugit ipsam necessitatibus, nulla obcaecati quis sed voluptatem. Cum illum quasi quos rerum sapiente unde ut. Cumque dolorum in optio.</span><span>Laboriosam odio omnis provident quia quos reiciendis unde vel! Alias culpa eius esse, excepturi harum libero magnam nulla odio officia officiis quidem recusandae suscipit voluptas. Ex repellat suscipit totam voluptatem?</span></p>
                </div>
                <div class="col-md-6">
                    <h3 class="text-center">Teacher</h3>
                    <img class="media-object" src="/img/Teacher.jpg" alt="Teacher">
                    <p class="text-justify"><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aliquam asperiores, doloremque error neque vitae. At dignissimos dolor dolorem magni porro ullam. Assumenda deleniti ex exercitationem iste officiis praesentium repudiandae?</span><span>A ad aliquam architecto commodi cum delectus deserunt ea eum, excepturi expedita hic laudantium natus non quae suscipit veniam veritatis. Consectetur deleniti fugiat illum impedit nemo nisi praesentium quidem tempora!</span></p>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <a class="btn btn-danger btn-lg" href="/login" role="button">Login</a><br>
                        <a href="/register">Register</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html>












