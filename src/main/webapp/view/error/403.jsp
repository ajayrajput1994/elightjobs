<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <c:if test="${title!=null && title!=''}">
    <title>${title.title}</title>
    <meta content="" name="keywords">
    <meta content="" name="description">
	</c:if>
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    
    
    <link href="<c:url value="/lib/animate/animate.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/lib/owlcarousel/assets/owl.carousel.min.css"/>" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Template Stylesheet -->
    
    <link href="<c:url value="/css/style.css"/>" rel="stylesheet">
<body>
<!-- 404 Start -->
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container text-center mt-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <i class="bi bi-exclamation-triangle display-1 text-primary"></i>
                        <h1 class="display-1">403</h1>
                        <h1 class="mb-4">Forbidden!</h1>
                        <p class="mb-4">We are sorry, but you do not have access to this page or resource.</p>                      <a class="btn btn-primary py-3 px-5" href="/">Go Back To Home</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 404 End -->
       <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<c:url value="/lib/wow/wow.min.js"/>"></script>
    <script src="<c:url  value="/lib/easing/easing.min.js"/>"></script>
    <script src="<c:url value="/lib/waypoints/waypoints.min.js"/>"></script>
    <script src="<c:url value="/lib/owlcarousel/owl.carousel.min.js"/>"></script>

    <!-- Template Javascript -->
    <script src="<c:url value="/js/main.js"/>"></script>
</body>
</html>