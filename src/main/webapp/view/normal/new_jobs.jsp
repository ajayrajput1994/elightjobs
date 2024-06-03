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
    <!-- MAIN BODY START -->
    <div class="wrapper">
       <!-- SIDEBAR START -->
       <jsp:include page="sidebar.jsp">
       <jsp:param value="${sidebar}" name="sidebar"/>
       </jsp:include>
        <!-- SIDEBAR END -->
      <div class="page-wrapper">
        <!-- SIDEBAR END -->
        <jsp:include page="main_header.jsp">
        	<jsp:param value="${ajobs}" name="ajobs"/>
        </jsp:include>
        <!-- SIDEBAR END -->
        <div class="content-wrapper">
          <div class="content">
<!-- Table Product -->
                <div class="row">
                  <div class="col-12">
                  <!-- Notification -->
				    <div class="card card-default" data-scroll-height="530">
				      <div class="card-header">
				        <h2 class="mb-5">New Jobs</h2>
				      </div>
				
				      <div class="card-body slim-scroll">
				      <c:choose>
				       <c:when test="${jobs!=null}">
				        <ul class="list-group">
				        <c:forEach var="j" items="${jobs}">
				          <li class="list-group-item list-group-item-action">
				            <div class="media media-sm mb-0"><a href="#"  ></a>
				              <div class="media-sm-wrapper">
				                <a href="#"  ><img src="<%="/adm/images/lightenning.png" %>" alt="User Image" style="width:70px;height:70px"></a>
				              </div>
				              <div class="media-body">
				                <a href="/user/job-detail/${j.id}/${j.role.trim().replaceAll('\\s','-')}"  >
				                <span class="title">${j.companyname}  (${j.role})</span></a>
				                <p><i class="mdi mdi-bullseye-arrow"></i> ${j.location} (${j.employment})</p>
				                <p><strong>CTC :</strong>Rs. ${j.salary}</p>
				                <p>${j.skills}</p>
				                <a href="#" class="mb-1 btn btn-pill btn-success px-3 mt-2 text-white"><i class="mdi mdi-heart"></i></a>
                               <a href="/user/update/${j.id}/appliedjob/${ajobs.id}" class="mb-1 btn btn-pill btn-success px-3  mt-2 text-white">Apply</a>
                               
				              </div>
				            </div>
				          </li>
				          </c:forEach>
				        </ul>
						</c:when>
				          <c:otherwise>
					          <div class="text-center text-red">
					          	<h1>Jobs not available !</h1>
					          </div>
				          </c:otherwise>
						</c:choose>
				      </div>
				    </div>
                  
                  </div>
                </div>
               <!--  END TABLE   -->
          </div>
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
   
    <!-- Card Offcanvas -->