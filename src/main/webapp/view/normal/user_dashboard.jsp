<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<jsp:include page="header.jsp"></jsp:include>
  	<body class="navbar-fixed sidebar-fixed" id="body">
    <script>
      NProgress.configure({
        showSpinner: false
      });
      NProgress.start();
    </script>
    <style>.complogo{width:80px;height:80px;}</style>
    <!-- MAIN BODY START -->
    <div class="wrapper">
       <!-- SIDEBAR START -->
       <jsp:include page="sidebar.jsp"></jsp:include>
        <!-- SIDEBAR END -->
      <div class="page-wrapper">
        <!-- SIDEBAR END -->
        <jsp:include page="main_header.jsp">
        	<jsp:param value="${ajobs}" name="ajobs"/>
        </jsp:include>
        <!-- SIDEBAR END -->
        <div class="content-wrapper">
         <!-- CONTENT START -->
          <div class="row p-3" >
           <c:choose>
           <c:when  test="${jobs!=null}">
           <c:forEach var="u" items="${jobs}">
          	<div class="col-lg-12 col-xl-12 mb-2">
			    <div class="card mb-4">
			      
			      <div class="card-body row">
				      <div class="col-md-2 col-xl-2 col-3" ><img class="card-img-top complogo" src="<%="/adm/images/lightenning.png" %>"></div>
				      <div class="col-md-8 col-xl-9  col-7" >
					      <h5 class="card-title ">${u.role}</h5>
					      <p class="h6">${u.companyname} dfadfasdfasd</p>
					      <div><span >Rs. </span> <span class="mr-2">${u.salary}</span><span class="mdi mdi-clock"></span><span class="mr-2">${u.shift}</span><span class="mdi mdi-map-marker-outline"></span><span class="mr-2">${u.location}</span></div>
					        <p class="card-text pb-3">${u.description}</p>
					        Skills: <span class="ml-1">${u.skills}</span>
			          </div>
				      <div class="col-md-2 col-xl-1  col-12 text-end " ><a href="/user/update/${u.id}/appliedjob/${ajobs.id}" class="mb-1 btn btn-pill btn-primary px-3">Apply</a></div>
				        
			      </div>
			    </div>
			  </div>
			  </c:forEach>
			  </c:when>
			  <c:otherwise>
			  <h5>Something went wrong! refresh the page...</h5>
			  </c:otherwise>
			  </c:choose>
		  </div>
			 <!-- CONTENT END -->
       </div>
        <!-- Footer START -->
        <jsp:include page="footer.jsp" ></jsp:include>
        <!-- Footer END -->
        
      </div>
    </div>
    <jsp:include page="footerfiles.jsp" ></jsp:include>
   <!-- MAIN BODY END -->
  	</body>
</html>