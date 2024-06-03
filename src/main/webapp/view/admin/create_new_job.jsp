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
              <div class="col-xl-10 mx-auto">
                <!-- Settings -->
                <div class="card card-default">
                  <div class="card-header">
                    <h2>Create New Category</h2>
                  </div>
                  <div class="card-body pt-0">
                    <form action="/admin/job-portal/create-job/creating" method="post"  modelAttribute="job">
					  <input type="hidden" name="id" value="${job.id}">
					  <div class="form-group">
					    <label for="Category">Category</label>
					    <select  class="form-control border-success" name="categories" id="Category">
					    <c:choose>
					    <c:when test="${category!=null}">
					    <c:forEach var="c" items="${category}">
					      <option value="${c.name}">${c.name}</option>
					      </c:forEach>
					      </c:when>
					      </c:choose>
					    </select>
					  </div>
					  <div class="form-row">
					    <div class="col-md-6 mb-3">
					      <label for="name">Cagetory Name :</label>
					      <input type="text" name="companyname" class="form-control border-success" id="companyname" value="${job.companyname}" placeholder="Company name" required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					    <div class="col-md-6 mb-3">
					      <label for="name">Role :</label>
					      <input type="text" name="role" class="form-control border-success" id="role" value="${job.role}" placeholder="Role " required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					  </div>
					  <div class="form-row">
					    <div class="col-md-6 mb-3">
					      <label for="name">Total Vacancy :</label>
					      <input type="number" name="vacancy" class="form-control border-success" id="vacancy" value="${job.vacancy}" placeholder="Vacancy" required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					    <div class="col-md-6 mb-3">
					      <label for="name">CTC/YEAR :</label>
					      <input type="text" name="salary" class="form-control border-success" id="salary" value="${job.salary}" placeholder="CTC / Year" required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					  </div>
					  <div class="form-row">
					    <div class="col-md-6 mb-3">
					      <label for="name">Employment :</label>
					      <input type="text" name="employment" class="form-control border-success" id="employment" value="${job.employment}" placeholder="Employment" required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					    <div class="col-md-6 mb-3">
					      <label for="name">Shift :</label>
					      <input type="text" name="shift" class="form-control border-success" id="shift" value="${job.shift}" placeholder="Shift" required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					  </div>
					  <div class="form-row">
					    <div class="col-md-6 mb-3">
					      <label for="name">Skills :</label>
					      <input type="text" name="skills" class="form-control border-success" id="skills" value="${job.skills}" placeholder="Skills" required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					    <div class="col-md-6 mb-3">
					      <label for="name">Required Experience :</label>
					      <input type="text" name="experience_year" class="form-control border-success" id="experience_year" value="${job.experience_year}" placeholder="Required exp. Years" required>
					      <div class="text-success small mt-1 errorname"></div>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="description">Description :</label>
					    <textarea class="form-control border-success" name="description" id="description" rows="3">${job.description}</textarea>
					  </div>
					  <div class="form-group">
					    <label for="responsiblities">Responsibilities :</label>
					    <textarea class="form-control border-success" name="responsiblities" id="responsiblities" rows="3">${job.responsiblities}</textarea>
					  </div>
					  <div class="form-group">
					    <label for="qualification">Qualification :</label>
					    <textarea class="form-control border-success" name="qualification" id="qualification" rows="3">${job.qualification}</textarea>
					  </div>
					  <div class="form-group">
					    <label for="education">Education Details :</label>
					    <textarea class="form-control border-success" name="education" id="education" rows="3">${job.education}</textarea>
					  </div>
					  <div class="form-group">
					    <label for="companydetail">Company Details :</label>
					    <textarea class="form-control border-success" name="companydetail" id="companydetail" rows="3">${job.companydetail}</textarea>
					  </div>
					  <div class="form-group">
					      <label for="name">Location :</label>
					      <input type="text" name="location" class="form-control border-success" id="location" value="${job.location}" placeholder="Vacancy Location" required>
					      <div class="text-success small mt-1 errorname"></div>
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
	var name=document.getElementById("companyname").value;
	if(name ==''){
		document.getElementByClass("errorname").innerHTML = "Category Name can't be Empty!";
		return false;
	}
	return true;
}</script>
  	</body>
</html>
   
    <!-- Card Offcanvas -->