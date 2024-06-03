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
          <div class="content">                
                  <!-- Top Statistics -->
                  <div class="row">
					  <!-- Frist box -->
					  <div class="col-xl-3 col-md-6">
					    <div class="card card-default bg-secondary">
					      <div class="d-flex p-5 justify-content-between">
					        <div class="icon-md bg-white rounded-circle mr-3">
					          <i class="mdi mdi-account-group-outline text-secondary"></i>
					        </div>
					        <div class="text-right">
					          <span class="h2 d-block text-white">890</span>
					          <p class="text-white">All Users</p>
					        </div>
					      </div>
					    </div>
					  </div>
					
					  <!-- Second box -->
					  <div class="col-xl-3 col-md-6">
					    <div class="card card-default bg-success">
					      <div class="d-flex p-5 justify-content-between">
					        <div class="icon-md bg-white rounded-circle mr-3">
					          <i class="mdi mdi-bullseye-arrow text-success"></i>
					        </div>
					        <div class="text-right">
					          <span class="h2 d-block text-white">350</span>
					          <p class="text-white">Active Placed</p>
					        </div>
					      </div>
					    </div>
					  </div>
					
					  <!-- Third box -->
					  <div class="col-xl-3 col-md-6">
					    <div class="card card-default bg-primary">
					      <div class="d-flex p-5 justify-content-between">
					        <div class="icon-md bg-white rounded-circle mr-3">
					          <i class="mdi mdi-billiards-rack text-primary"></i>
					        </div>
					        <div class="text-right">
					          <span class="h2 d-block text-white">1360</span>
					          <p class="text-white">All Company</p>
					        </div>
					      </div>
					    </div>
					  </div>
					
					  <!-- Fourth box -->
					  <div class="col-xl-3 col-md-6">
					    <div class="card card-default bg-info">
					      <div class="d-flex p-5 justify-content-between">
					        <div class="icon-md bg-white rounded-circle mr-3">
					          <i class="mdi mdi-album text-info"></i>
					        </div>
					        <div class="text-right">
					          <span class="h2 d-block text-white">$8930</span>
					          <p class="text-white">Active Users</p>
					        </div>
					      </div>
					    </div>
					  </div>
					</div>
                  


                <div class="row">
                  <div class="col-xl-4">
                    <!-- Income and Express -->
                    <div class="card card-default">
                      <div class="card-header">
                        <h2>Recent visitors</h2>
                        <div class="dropdown">
                          <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false" data-display="static">
                          </a>

                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                         
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-4">
                    <!-- Income and Express -->
                    <div class="card card-default">
                      <div class="card-header">
                        <h2>Recentet company</h2>
                        <div class="dropdown">
                          <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false" data-display="static">
                          </a>

                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                         
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-4">
                    <!-- Current Users  -->
                    <div class="card card-default">
                      <div class="card-header">
                        <h2>Current Users</h2>
                        <span>Realtime</span>
                      </div>
                      <div class="card-body">
                         
                      </div>
                      <div class="card-footer bg-white py-4">
                        <a href="#" class="text-uppercase">Current Users Overview</a>
                      </div>
                    </div>
                  </div>
                </div>


                
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
                              <td>${u.companyname} Wipro</td>
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
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
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


                <div class="row">
                  <div class="col-xl-4">
                    <!-- Top Customers -->
                    <div class="card card-default">
                      <div class="card-header">
                        <h2>Top Customers</h2>
                      </div>
                      <div class="card-body">
                        <table class="table table-borderless table-thead-border">
                          <thead>
                            <tr>
                              <th>Name</th>
                              <th class="text-right">Income</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td class="text-dark font-weight-bold">Gunter Reich</td>
                              <td class="text-right">$2,560</td>
                            </tr>
                            <tr>
                              <td class="text-dark font-weight-bold">Anke Kirsch</td>
                              <td class="text-right">$1,720</td>
                            </tr>
                            <tr>
                              <td class="text-dark font-weight-bold">Karolina Beer</td>
                              <td class="text-right">$1,230</td>
                            </tr>
                            <tr>
                              <td class="text-dark font-weight-bold">Lucia Christ</td>
                              <td class="text-right">$875</td>
                            </tr>
                          </tbody>
                          <tfoot class="border-top">
                            <tr>
                              <td><a href="#" class="text-uppercase">See All</a></td>
                            </tr>
                          </tfoot>
                        </table>
                      </div>
                    </div>

                  </div>
                <div class="col-xl-8">
                  
                    <!-- Sales by Product -->
                    <div class="card card-default">
                      <div class="card-header align-items-center">
                        <h2 class="">Sales by Product</h2>
                        <a href="#" class="btn btn-primary btn-pill" data-toggle="modal" data-target="#modal-stock">Add Stock</a>
                      </div>
                      <div class="card-body">
                        <div class="tab-content">
                          <table id="product-sale" class="table table-product " style="width:100%">
                            <thead>
                              <tr>
                                <th>Product Name</th>
                                <th>Unit</th>
                                <th>Amount</th>
                                <th>%sold</th>
                                <th class="th-width-250"></th>
                              </tr>
                            </thead>
                            <tbody>

                              <tr>
                                <td>Coach Swagger</td>
                                <td>134</td>
                                <td>$24541</td>
                                <td>35.28%</td>
                                <td>
                                  <div class="progress progress-md rounded-0">
                                    <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="70%" aria-valuemin="0" aria-valuemax="100"></div>
                                  </div>
                                </td>
                              </tr>

                              <tr>
                                <td>Toddler Shoes</td>
                                <td>119</td>
                                <td>$20225</td>
                                <td>27.05%</td>
                                <td>
                                  <div class="progress progress-md rounded-0">
                                    <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55%" aria-valuemin="0" aria-valuemax="100"></div>
                                  </div>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>

                </div>
                
              </div>

              <!-- Stock Modal -->
              <div class="modal fade modal-stock" id="modal-stock" aria-labelledby="modal-stock" aria-hidden="true">
                <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
                  <form action="#">
                    <div class="modal-content">
                      <div class="modal-header align-items-center p3 p-md-5">
                        <h2 class="modal-title" id="exampleModalGridTitle">Add Stock</h2>
                        <div>
                          <button type="button" class="btn btn-light btn-pill mr-1 mr-md-2" data-dismiss="modal"> cancel </button>
                          <button type="submit" class="btn btn-primary  btn-pill" data-dismiss="modal"> save </button>
                        </div>

                      </div>
                      <div class="modal-body p3 p-md-5">
                        <div class="row">
                          <div class="col-lg-8">
                            <h3 class="h5 mb-5">Product Information</h3>
                            <div class="form-group mb-5">
                              <label for="new-product">Product Title</label>
                              <input type="text" class="form-control" id="new-product" placeholder="Add Product">
                            </div>
                            <div class="form-row mb-4">
                              <div class="col">
                                <label for="price">Price</label>
                                <div class="input-group">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">$</span>
                                  </div>
                                  <input type="text" class="form-control" id="price" placeholder="Price" aria-label="Price"
                                    aria-describedby="basic-addon1">
                                </div>
                              </div>
                              <div class="col">
                                <label for="sale-price">Sale Price</label>
                                <div class="input-group">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">$</span>
                                  </div>
                                  <input type="text" class="form-control" id="sale-price" placeholder="Sale Price" aria-label="SalePrice"
                                    aria-describedby="basic-addon1">
                                </div>
                              </div>
                            </div>

                            <div class="product-type mb-3 ">
                              <label class="d-block" for="sale-price">Product Type <i class="mdi mdi-help-circle-outline"></i> </label>
                              <div>

                                <div class="custom-control custom-radio d-inline-block mr-3 mb-3">
                                  <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" checked="checked">
                                  <label class="custom-control-label" for="customRadio1">Physical Good</label>
                                </div>

                                <div class="custom-control custom-radio d-inline-block mr-3 mb-3">
                                  <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                                  <label class="custom-control-label" for="customRadio2">Digital Good</label>
                                </div>

                                <div class="custom-control custom-radio d-inline-block mr-3 mb-3">
                                  <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
                                  <label class="custom-control-label" for="customRadio3">Service</label>
                                </div>

                              </div>
                            </div>

                            <div class="editor">
                              <label class="d-block" for="sale-price">Description <i class="mdi mdi-help-circle-outline"></i></label>
                              <div id="standalone">
                                <div id="toolbar">
                                  <span class="ql-formats">
                                    <select class="ql-font"></select>
                                    <select class="ql-size"></select>
                                  </span>
                                  <span class="ql-formats">
                                    <button class="ql-bold"></button>
                                    <button class="ql-italic"></button>
                                    <button class="ql-underline"></button>
                                  </span>
                                  <span class="ql-formats">
                                    <select class="ql-color"></select>
                                  </span>
                                  <span class="ql-formats">
                                    <button class="ql-blockquote"></button>
                                  </span>
                                  <span class="ql-formats">
                                    <button class="ql-list" value="ordered"></button>
                                    <button class="ql-list" value="bullet"></button>
                                    <button class="ql-indent" value="-1"></button>
                                    <button class="ql-indent" value="+1"></button>
                                  </span>
                                  <span class="ql-formats">
                                    <button class="ql-direction" value="rtl"></button>
                                    <select class="ql-align"></select>
                                  </span>
                                </div>
                              </div>
                              <div id="editor"></div>

                              <div class="custom-control custom-checkbox d-inline-block mt-2">
                                <input type="checkbox" class="custom-control-input" id="customCheck2">
                                <label class="custom-control-label" for="customCheck2">Hide product from published site</label>
                              </div>

                            </div>

                          </div>
                          <div class="col-lg-4">
                            <div class="custom-file">
                              <input type="file" class="custom-file-input" id="customFile" placeholder="please imgae here">
                              <span class="upload-image">Click here to <span class="text-primary">add product image.</span> </span>
                            </div>
                          </div>
                        </div>
                      </div>

                    </div>
                  </form>
                </div>
              </div>
			</div>
          
			 <!-- CONTENT END -->
       </div>
        <!-- Footer START -->
        <jsp:include page="footer.jsp" ></jsp:include>
        <!-- Footer END -->
        
      </div>
    </div>
    <jsp:include page="footerfiles.jsp" ></jsp:include>
  	</body>
</html>