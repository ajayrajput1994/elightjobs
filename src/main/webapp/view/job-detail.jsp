<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
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

        <!-- Job Detail Start -->
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row gy-5 gx-4">
                    <div class="col-lg-8">
                        <div class="d-flex align-items-center mb-5">
                            <img class="flex-shrink-0 img-fluid border rounded" src="<%="/img/com-logo-2.jpg" %>" alt="" style="width: 80px; height: 80px;">
                            <div class="text-start ps-4">
                                <h3 class="mb-3">${jobs.role}</h3>
                                <span class="text-truncate me-3"><i class="fa fa-map-marker-alt text-primary me-2"></i>${jobs.location}</span>
                                <span class="text-truncate me-3"><i class="far fa-clock text-primary me-2"></i>${jobs.employment}</span>
                                <span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i>0.0 Rs - ${jobs.salary} Rs</span>
                            </div>
                        </div>

                        <div class="mb-5">
                            <h4 class="mb-3">Job description</h4>
                            <p>Dolor justo tempor duo ipsum accusam rebum gubergren erat. Elitr stet dolor vero clita labore gubergren. Kasd sed ipsum elitr clita rebum ut sea diam tempor. Sadipscing nonumy vero labore invidunt dolor sed, eirmod dolore amet aliquyam consetetur lorem, amet elitr clita et sed consetetur dolore accusam. Vero kasd nonumy justo rebum stet. Ipsum amet sed lorem sea magna. Rebum vero dolores dolores elitr vero dolores magna, stet sea sadipscing stet et. Est voluptua et sanctus at sanctus erat vero sed sed, amet duo no diam clita rebum duo, accusam tempor takimata clita stet nonumy rebum est invidunt stet, dolor.</p>
                            <h4 class="mb-3">Responsibility</h4>
                            <p>Magna et elitr diam sed lorem. Diam diam stet erat no est est. Accusam sed lorem stet voluptua sit sit at stet consetetur, takimata at diam kasd gubergren elitr dolor</p>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Dolor justo tempor duo ipsum accusam</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Elitr stet dolor vero clita labore gubergren</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Rebum vero dolores dolores elitr</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Est voluptua et sanctus at sanctus erat</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Diam diam stet erat no est est</li>
                            </ul>
                            <h4 class="mb-3">Qualifications</h4>
                            <p>Magna et elitr diam sed lorem. Diam diam stet erat no est est. Accusam sed lorem stet voluptua sit sit at stet consetetur, takimata at diam kasd gubergren elitr dolor</p>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Dolor justo tempor duo ipsum accusam</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Elitr stet dolor vero clita labore gubergren</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Rebum vero dolores dolores elitr</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Est voluptua et sanctus at sanctus erat</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Diam diam stet erat no est est</li>
                            </ul>
                        </div>
        
                        <div class="">
                            <h4 class="mb-4">Apply For The Job</h4>
                            <form:form action="/apply-request/${jobs.role}" method="post" modelAttribute="appliedJobs" enctype="multipart/form-data">
                                <div class="row g-3">
                                	<input type="hidden" name="jobid" value="${jobs.id}"/>
                                    <div class="col-12 col-sm-6">
                                        <form:input type="text" path="name" class="form-control" placeholder="Your Name" />
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <form:input type="email" path="email" class="form-control" placeholder="Your Email"/>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <form:input type="text" path="portfolio_url" class="form-control" placeholder="Portfolio Website"/>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <form:input type="file" path="multipartFile" class="form-control bg-white"/>
                                    </div>
                                    <div class="col-12">
                                        <textarea class="form-control" rows="5" placeholder="Coverletter"></textarea>
                                    </div>
                                    <div class="col-12">
                                        <form:button class="btn btn-primary w-100" type="submit">Apply Now</form:button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
        
                    <div class="col-lg-4">
                        <div class="bg-light rounded p-5 mb-4 wow slideInUp" data-wow-delay="0.1s">
                            <h4 class="mb-4">Job Summery</h4>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Published On: ${jobs.create_at}</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Vacancy: ${jobs.vacancy} Position</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Job Nature: ${jobs.employment}</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Salary: 0.0 Rs - ${jobs.vacancy} Rs</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Location: ${jobs.location}</p>
                            <p class="m-0"><i class="fa fa-angle-right text-primary me-2"></i>Date Line: ${jobs.create_at}</p>
                        </div>
                        <div class="bg-light rounded p-5 wow slideInUp" data-wow-delay="0.1s">
                            <h4 class="mb-4">Company Detail</h4>
                            <p class="m-0">Ipsum dolor ipsum accusam stet et et diam dolores, sed rebum sadipscing elitr vero dolores. Lorem dolore elitr justo et no gubergren sadipscing, ipsum et takimata aliquyam et rebum est ipsum lorem diam. Et lorem magna eirmod est et et sanctus et, kasd clita labore.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Job Detail End -->

<jsp:include page="footer.jsp"></jsp:include>
    </div>


</body>
</html>