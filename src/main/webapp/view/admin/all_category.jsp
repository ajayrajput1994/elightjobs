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
       <jsp:include page="sidebar.jsp"></jsp:include>
        <!-- SIDEBAR END -->
      <div class="page-wrapper">
        <!-- SIDEBAR END -->
        <jsp:include page="main_header.jsp">
        	<jsp:param value="${ajobs}" name="ajobs"/>
        </jsp:include>
        <!-- SIDEBAR END -->
        <div class="content-wrapper">
          <div class="content">
            <div class="row">
              <div class="col-xl-12">
                <!-- Settings -->
                <div class="card card-default">
                  <div class="card-header">
                    <h2>All Category</h2>
                  </div>
                  <div class="card-body pt-0">
                  <c:choose>
                  <c:when test="${category!=null}">
                    <div class="table-responsive">
                    	<table class="table table-bordered table-hover" >
						  <thead>
						    <tr>
						      <th scope="col">Category Name</th>
						      <th scope="col">icon</th>
						      <th scope="col">Create at</th>
						      <th class="text-center" colspan="2">Action</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach var="c" items="${category}">
						    <tr>
						      <td>${c.name}</td>
						      <td>${c.icon}</td>
						      <td>${c.create_at}</td>
						      <th class="text-center">
						        <a href="/admin/category-portal/update/${c.id}" class="text-danger">
						          <i class="mdi mdi-pen"></i>
						        </a>
						        </th>
						        <th class="text-center">
						        <a href="/admin/category-portal/delete/${c.id}" >
						          <i class="mdi mdi-close text-danger"></i>
						        </a>
						
						      </th>
						    </tr>
						    </c:forEach>
						  </tbody>
						</table>
                    </div>
                    </c:when>
                    <c:otherwise>
                    <div class="text-center">
                    	<h1>No Category available !</h1>
                    </div>
                    </c:otherwise>
                    </c:choose>
                    
                  </div>
                </div>
              </div>
             
            </div>
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