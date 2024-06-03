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
                    <h2>Create New Category</h2>
                  </div>
                  <div class="card-body pt-0">
                    <form action="/admin/category-portal/create-category/creating" method="post" onsubmit="return check_cat()" modelAttribute="category">
					  <input type="hidden" name="id" value="${category.id}">
					  <div class="form-row">
					    <div class="col-md-12 mb-3">
					      <label for="name">Cagetory Name</label>
					      <input type="text" name="name" class="form-control border-success" id="name" value="${category.name}" placeholder="Category name" required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					  </div>
					  <button class="btn btn-primary btn-pill mr-2" type="submit">Submit</button>
					</form>
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
		document.getElementByClass("errorname").innerHTML = "Category Name can't be Empty!";
		return false;
	}
	return true;
}</script>
  	</body>
</html>
   
    <!-- Card Offcanvas -->