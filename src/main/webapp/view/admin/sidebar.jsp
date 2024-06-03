<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- ====================================
          ——— LEFT SIDEBAR WITH OUT FOOTER
        ===================================== -->
      <aside class="left-sidebar sidebar-dark" id="left-sidebar">
        <div id="sidebar" class="sidebar sidebar-with-footer">
          <!-- Aplication Brand -->
          <div class="app-brand">
            <a href="/">
              <img src="<c:url value="/adm/images/logo.png"/>" alt="Mono">
              <span class="brand-name">MONO</span>
            </a>
          </div>
          <!-- begin sidebar scrollbar -->
          <div class="sidebar-left" data-simplebar style="height: 100%;">
            <!-- sidebar menu -->
            <ul class="nav sidebar-inner" id="sidebar-menu">
              <li>
                <a class="sidenav-item-link" href="/admin/dash">
                  <i class="mdi mdi-chart-line"></i>
                  <span class="nav-text">Dashboard</span>
                </a>
              </li>
              <li class="section-title">Category Portal</li>
              <li class="has-sub">
                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#category" aria-expanded="false" aria-controls="category">
                  <i class="mdi mdi-arrange-bring-to-front"></i>
                  <span class="nav-text">Category</span>
                  <b class="caret"></b>
                </a>
                <ul class="collapse" id="category" data-parent="#sidebar-menu">
                  <div class="sub-menu">
                    <li>
                      <a class="sidenav-item-link" href="/admin/category-portal/create-category">
                        <span class="nav-text">Create Category</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="/admin/category-portal/all-categories">
                        <span class="nav-text">All Categories</span>
                      </a>
                    </li>
                  </div>
                </ul>
              </li>
              <li>
                <a class="sidenav-item-link" href="/admin/roles-portal/role">
                  <i class="mdi mdi-shield-key-outline"></i>
                  <span class="nav-text">Roles</span>
                </a>
              </li>
              <li class="section-title">Job Portal</li>
              <li class="has-sub">
                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#job" aria-expanded="false" aria-controls="job">
                  <i class="mdi mdi-bullseye-arrow"></i>
                  <span class="nav-text">Jobs</span>
                  <b class="caret"></b>
                </a>
                <ul class="collapse" id="job" data-parent="#sidebar-menu">
                  <div class="sub-menu">
                    <li>
                      <a class="sidenav-item-link" href="/admin/job-portal/create-job">
                        <span class="nav-text">Create New Job</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="/admin/job-portal/all-jobs">
                        <span class="nav-text">All Jobs</span>
                      </a>
                    </li>
                  </div>
                </ul>
              </li>
              <li class="section-title">Company Portal</li>
              <li class="has-sub">
                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#company" aria-expanded="false" aria-controls="company">
                  <i class="mdi mdi-billiards-rack"></i>
                  <span class="nav-text">Company</span>
                  <b class="caret"></b>
                </a>
                <ul class="collapse" id="company" data-parent="#sidebar-menu">
                  <div class="sub-menu">
                    <li>
                      <a class="sidenav-item-link" href="#">
                        <span class="nav-text">All Company</span>
                      </a>
                    </li>
                  </div>
                </ul>
              </li>
              <!-- <li>
                <a class="sidenav-item-link" href="chat.html">
                  <i class="mdi mdi-wechat"></i>
                  <span class="nav-text">Chat</span>
                </a>
              </li>
              <li>
                <a class="sidenav-item-link" href="contacts.html">
                  <i class="mdi mdi-phone"></i>
                  <span class="nav-text">Contacts</span>
                </a>
              </li> -->
              <li class="section-title"> Personal Info </li>
              <li class="has-sub active expand">
                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#users" aria-expanded="false" aria-controls="users">
                  <i class="mdi mdi-account-outline"></i>
                  <span class="nav-text">Account Portal</span>
                  <b class="caret"></b>
                </a>
                <ul class="collapse show" id="users" data-parent="#sidebar-menu">
                  <div class="sub-menu">
                    <li>
                      <a class="sidenav-item-link" href="/admin/account-portal/profile">
                        <span class="nav-text">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="/admin/account-portal/setting">
                        <span class="nav-text">My Profile Settings</span>
                      </a>
                    </li>  
                  </div>
                </ul>
              </li>
            </ul>
          </div>
          <div class="sidebar-footer">
            <div class="sidebar-footer-content">
              <ul class="d-flex">
                <li>
                  <a href="#" data-toggle="tooltip" title="Profile settings">
                    <i class="mdi mdi-settings"></i>
                  </a>
                </li>
                <li>
                  <a href="#" data-toggle="tooltip" title="No chat messages">
                    <i class="mdi mdi-chat-processing"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </aside>
      <!-- ====================================
      ——— END SIDEBAR
      ===================================== -->