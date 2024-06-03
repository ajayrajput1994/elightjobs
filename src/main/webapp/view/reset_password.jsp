<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Create your account get register here !</title>
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700|Roboto" rel="stylesheet">
    <link type="text/css" href="<c:url value="/adm/plugin/materialdesignicons.min.css"/>" rel="stylesheet" />
    <link type="text/css" href="<c:url value="/adm/plugin/simplebar.css"/>" rel="stylesheet" />
    <!-- PLUGINS CSS STYLE -->
    <link  type="text/css" href="<c:url value="/adm/plugin/nprogress.css"/>" rel="stylesheet" />
    <!-- MONO CSS -->
    <link id="main-css-href" type="text/css" rel="stylesheet" href="<c:url value="/adm/css/style.css"/>" />
    <!-- FAVICON -->
    <link href="<c:url value="/adm/image/favicon.png"/>" rel="shortcut icon" />
    <script src="<c:url value="/adm/plugin/nprogress.js"/>"></script>
    <style>
    	.ermsg{color:red;
    	}
    </style>
  </head>
<body class="bg-light-gray" id="body">
          <div class="container d-flex align-items-center justify-content-center" style="min-height: 100vh">
          <div class="d-flex flex-column justify-content-between">
            <div class="row justify-content-center mt-5">
              <div class="col-md-10">
                <div class="card card-default">
                  <div class="card-header">
                    <div class="app-brand w-100 d-flex justify-content-center border-bottom-0">
                      <a class="w-auto pl-0" href="/index.html">
                        <img src="adm/images/logo.png" alt="Mono">
                        <span class="brand-name text-dark">MONO</span>
                      </a>
                    </div>
                  </div>
                  <div class="card-body p-5">
                    <h4 class="text-dark mb-5">Reset Your Password</h4>
                    <form:form action="/reset-pass" method="post" onsubmit="return check_password()" modelAttribute="appliedJobs">
                      <div class="row">
                        <div class="form-group col-md-12 mb-4">
                       	 	<div id="cdmail"  class="ermsg"></div>
                          <form:input type="email" path="email"  class="form-control input-lg" id="email" aria-describedby="emailHelp" placeholder="Email" />
                        	
                        </div>

                        <div class="col-md-12">
                          <button type="submit" class="btn btn-primary btn-pill mb-4">Submit</button>

                          <p>Already have an account?
                            <a class="text-blue" href="/sign-in">Sign in</a>
                          </p>
                        </div>
                      </div>
                    </form:form>

                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
<script>
function check_password(){
	var mail=document.getElementById("email").value;
	if(mail ==''){
		document.getElementById("cdmail").innerHTML = "Email can't be Empty!";
		return false;
	}
	return true;
}
</script>
</body>
</html>