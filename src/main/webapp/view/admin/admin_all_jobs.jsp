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
            <!-- Table Product -->
                <div class="row">
                  <div class="col-12">
                    <div class="card card-default">
                      <div class="card-header">
                        <h2>Recent Jobs Inventory</h2>
                        <div class="dropdown">
                          <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> Yearly Chart
                          </a>

                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                      <c:choose>
			           <c:when  test="${jobs!=null}">
			           <div class="table-responsive">
                        <table id="productsTable" class="table table-hover table-product" style="width:100%">
                          <thead>
                            <tr>
                              <th></th>
                              <th>Company Name</th>
                              <th>Position</th>
                              <th>Required Skill</th>
                              <th>CTC</th>
                              <th>Job timing</th>
                              <th>location</th>
                              <th></th>
                            </tr>
                          </thead>
                          <tbody>
							<c:forEach var="u" items="${jobs}">
                            <tr>
                              <td class="py-0">
                                <img src="<%="/adm/images/lightenning.png" %>" alt="Product Image">
                              </td>
                              <td>${u.companyname}</td>
                              <td>${u.role}</td>
                              <td>${u.skills} java,python</td>
                              <td>${u.salary}</td>
                              <td>${u.shift} Ist shift</td>
                              <td>${u.location}</td>
                              <td>
                                <div class="dropdown">
                                  <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                  </a>

                                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                                  <a class="dropdown-item" href="/admin/job-portal/job-details/${u.id}">view</a>
                                    <a class="dropdown-item" href="/admin/job-portal/edit-job/${u.id}">Edit</a>
                                    <a class="dropdown-item" href="/admin/job-portal/delete-job/${u.id}">Delete</a>
                                  </div>
                                </div>
                              </td>
                            </tr>   
							</c:forEach>

                          </tbody>
                        </table>
						</div>
						  </c:when>
						  <c:otherwise>
						  <div class="text-center">
						  <h1>No Jobs availables.try again!</h1>
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