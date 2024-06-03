<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp" >
<jsp:param value="${title}" name="title"/>
</jsp:include> 
<body>
 <div class="container-xxl bg-white p-0">
		<jsp:include page="navbar.jsp">
			<jsp:param value="${msg}" name="msg"/>
		</jsp:include>
		<jsp:include page="carousel.jsp">
			<jsp:param value="${title}" name="title" />
		</jsp:include>
	
        <!-- Category Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">Explore By Category</h1>
                <c:choose>
                <c:when test="${cats!=null}">
                <div class="row g-4">
                	<c:forEach var="u" items="${cats}">
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item rounded p-4" href="/new-jobs/${u.name.trim().replaceAll('\\s','-')}">
                            <i class="fa fa-3x ${u.icon} text-primary mb-4"></i>
                            <h6 class="mb-3">${u.name}</h6>
                            <p class="mb-0">123 Vacancy</p>
                        </a>
                    </div>
                    </c:forEach>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                        <a class="cat-item rounded p-4" href="">
                            <i class="fa fa-3x fa-hands-helping text-primary mb-4"></i>
                            <h6 class="mb-3">Sales & Communication</h6>
                            <p class="mb-0">123 Vacancy</p>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                        <a class="cat-item rounded p-4" href="">
                            <i class="fa fa-3x fa-drafting-compass text-primary mb-4"></i>
                            <h6 class="mb-3">Design & Creative</h6>
                            <p class="mb-0">123 Vacancy</p>
                        </a>
                    </div>
                </div>
                </c:when>
					<c:otherwise>
					<h3 class="text-center">No One Applied yet! try again later.</h3>
					</c:otherwise>
                </c:choose>
            </div>
        </div>
        <!-- Category End -->

<jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>