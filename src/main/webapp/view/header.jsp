<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <head>
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
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->


        <link href="<c:url value='/lib/animate/animate.min.css'/>" rel="stylesheet">
        <link href="<c:url value='/lib/owlcarousel/assets/owl.carousel.min.css'/>" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->

        <link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet">

        <!-- Template Stylesheet -->

        <link href="<c:url value='/css/style.css'/>" rel="stylesheet">
    </head>