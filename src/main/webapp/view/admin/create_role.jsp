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
              <div class="col-xl-5">
                <!-- Settings -->
                <div class="card card-default">
                  <div class="card-header">
                    <h2>Create New Roles</h2>
                  </div>
                  <div class="card-body pt-0">
                    <form action="/admin/roles-portal/role/creating" method="post" onsubmit="return check_cat()" modelAttribute="role">
					  <input type="hidden" name="id" value="${role.id}">
					  <div class="form-row">
					    <div class="col-md-12 mb-3">
					      <label for="role">Role Name</label>
					      <input type="text" name="name" class="form-control border-success" id="name" value="${role.name}" placeholder="Role name" required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					  </div>
					  <button class="btn btn-primary btn-pill mr-2" type="submit">Submit</button>
					</form>
                  </div>
                </div>
              </div>
             <div class="col-xl-7">
                <!-- Settings -->
                <div class="card card-default">
                  <div class="card-header">
                    <h2>All Roles</h2>
                  </div>
                  <div class="card-body pt-0">
                  <c:choose>
                  <c:when test="${roles!=null}">
                    <div class="table-responsive">
                    	<table class="table table-bordered table-hover" >
						  <thead>
						    <tr>
						      <th scope="col">Role Name</th>
						      <th scope="col">Create at</th>
						      <th class="text-center" colspan="2">Action</th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach var="c" items="${roles}">
						    <tr>
						      <td>${c.name}</td>
						      <td>${c.create_at}</td>
						      <th class="text-center">
						        <a href="/admin/roles-portal/role/update/${c.id}" class="text-danger">
						          <i class="mdi mdi-pen"></i>
						        </a>
						        </th>
						        <th class="text-center">
						        <a href="/admin/roles-portal/role/delete/${c.id}" >
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
                    	<h1>No Roles available !</h1>
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
   <script>
function check_cat(){
	var name=document.getElementById("name").value;
	if(name ==''){
		document.getElementByClass("errorname").innerHTML = "Role Name can't be Empty!";
		return false;
	}
	return true;
}</script>
  	</body>
</html>
   
    <!-- Card Offcanvas -->