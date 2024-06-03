        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="/" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
                <h1 class="m-0 text-primary">JobEntry</h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="/" class="nav-item nav-link">Home</a>
                    <a href="/about" class="nav-item nav-link">About</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Jobs</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="/all-jobs" class="dropdown-item">Job List</a>
                            <a href="#" class="dropdown-item">Job Detail</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="/categories" class="dropdown-item active">Job Category</a>
                            <a href="/testimonial" class="dropdown-item">Testimonial</a>
                            <a href="#" class="dropdown-item">404</a>
                        </div>
                    </div>
                    <a href="/contact" class="nav-item nav-link">Contact</a>
                    <%if(session.getAttribute("online")==null){%> <a  href="/sign-up" class="nav-item nav-link">Sign up</a><%} %>
                    <%if(session.getAttribute("online")!=null){%>
                    <div  class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">My Account</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <%if(session.getAttribute("online").equals("ROLE_ADMIN")){%><a href="/admin/dashboard" class="dropdown-item active">Profile</a><%} %>
                            <%if(session.getAttribute("online").equals("ROLE_NORMAL")){%><a href="/user/dashboard" class="dropdown-item active">Profile</a><%} %>
                            <%if(session.getAttribute("online").equals("ROLE_AUTHOR")){%><a href="/author/dashboard" class="dropdown-item active">Profile</a><%} %>
                            <a href="/logout" class="dropdown-item">Logout</a>
                        </div>
                    </div><%} %>
                </div>
                <a type="button" onclick="createPostRequest()" class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">Post A Job<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->
        
        
        <c:choose>  
    	<c:when test="${msg.isactive}"> 
    	<!-- toast start -->
        <div aria-live="polite" aria-atomic="true" class="d-flex justify-content-end align-items-center w-100">
		  <!-- Then put toasts within -->
		  <div class="toast show" role="alert" data-bs-autohide="false" aria-live="assertive" aria-atomic="true">
			<c:if test="${msg.color!=null && msg.color!=''}"><div class="toast-header  ${msg.color} text-white"></c:if>
			  <i class="fa fa-solid fa-bell fa-2x px-2"></i>
			    <strong class="me-auto"><c:if test="${msg.type!=null&& msg.type!=''}">${msg.type}</c:if></strong>
			    <small><c:if test="${msg!=null}">${msg.time}</c:if></small>
			  <button type="button" onclick="hide()" class="btn-close text-white" data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body bg-white">
			  <c:if test="${msg.message!=null && msg.message!=''}">${msg.message}</c:if>
			</div>
		  </div>
		</div>
		 <!-- toast end -->
		</c:when>
		<c:otherwise></c:otherwise>  
		</c:choose>
		