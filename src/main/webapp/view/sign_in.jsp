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
    <title>Open your account get register here !</title>
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
            <div class="row justify-content-center">
              <div class="col-lg-6 col-md-10">
                <div class="card card-default mb-0">
                  <div class="card-header pb-0">
                    <div class="app-brand w-100 d-flex justify-content-center border-bottom-0">
                      <a class="w-auto pl-0" href="/">
                        <img src="adm/images/logo.png" alt="Mono">
                        <span class="brand-name text-dark">MONO</span>
                      </a>
                    </div>
                  </div>
                  <div class="card-body px-5 pb-5 pt-0">

                    <h4 class="text-dark mb-6 text-center">Sign in</h4>
					<%-- <div c:if="${#param.error}" class="alert alert-danger">Bad Cridencials!</div>
					<div c:if="${#param.error}" class="alert alert-danger">Bad Cridencials!</div> --%>
                    <form action="/do-login"  method="post" onsubmit="return check_password()" >
                      <div class="row">
                        <div class="form-group col-md-12 mb-4">
                        <div id="cdmail"  class="ermsg"></div>
                          <input type="email" name="username"  class="form-control input-lg" id="username" aria-describedby="emailHelp" placeholder="Email" >
                        	
                        </div>
                        <div class="form-group col-md-12 ">
                        <div id="cdpass" class="ermsg"></div>
                          <input type="password" name="password"  class="form-control input-lg" id="password" autoComplete="new Password" placeholder="Password" >
                        	
                        </div>
                        <div class="col-md-12">

                          <div class="d-flex justify-content-between mb-3">

                            <div class="custom-control custom-checkbox mr-3 mb-3">
                              <input type="checkbox" class="custom-control-input" id="customCheck2">
                              <label class="custom-control-label" for="customCheck2">Remember me</label>
                            </div>

                            <a class="text-color" href="/reset-password"> Forgot password? </a>

                          </div>

                          <button type="submit" class="btn btn-primary btn-pill mb-4">Sign In</button>

                          <p>Don't have an account yet ?
                            <a class="text-blue" href="/sign-up">Sign Up</a>
                          </p>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
<script>
function check_password(){ 
	var mail=document.getElementById("email").value;
	var pass=document.getElementById("password").value; 
	if(mail ==''){
		document.getElementById("cdmail").innerHTML = "Email can't be Empty!";
		return false;
	}
	if(pass ==''){
		document.getElementById("cdpass").innerHTML = "Password can't be Empty!";
		return false;
	}
	return true;
}
</script>
</body>
</html>