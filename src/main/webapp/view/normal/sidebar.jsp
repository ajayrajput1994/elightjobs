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
                <a class="sidenav-item-link" href="/user/dashboard">
                  <i class="mdi mdi-chart-line"></i>
                  <span class="nav-text"> Dashboard</span>
                </a>
              </li>
              
              <li class="section-title">Jobs Potentional </li>
              
              <li class="has-sub ${sidebar.active_link}">
                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#myjobs" aria-expanded="false" aria-controls="myjobs">
                  <i class="mdi mdi-bullseye-arrow"></i>
                  <span class="nav-text">Jobs</span>
                  <b class="caret"></b>
                </a>
                <ul class="collapse ${sidebar.active_heading}" id="myjobs" data-parent="#sidebar-menu">
                  <div class="sub-menu">
                    <li >
                      <a class="sidenav-item-link" href="/user/jobs">
                        <span class="nav-text">All Jobs</span>
                      </a>
                    </li>
                    <li class="${sidebar.active_link}">
                      <a class="sidenav-item-link" href="/user/applied-jobs">
                        <span class="nav-text">Applied Jobs</span>
                      </a>
                    </li>
                    
                  </div>
                </ul>
              </li>
              <li class="section-title">Personal Cridencial </li>
              <!-- <li>
                <a class="sidenav-item-link" href="chat.html">
                  <i class="mdi mdi-wechat"></i>
                  <span class="nav-text">Chat</span>
                </a>
              </li> -->
              <!-- 
              <li class="has-sub">
                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#ui-elements" aria-expanded="false" aria-controls="ui-elements">
                  <i class="mdi mdi-folder-outline"></i>
                  <span class="nav-text">UI Components</span>
                  <b class="caret"></b>
                </a>
                <ul class="collapse" id="ui-elements" data-parent="#sidebar-menu">
                  <div class="sub-menu">
                    <li>
                      <a class="sidenav-item-link" href="alert.html">
                        <span class="nav-text">Alert</span>
                      </a>
                    </li>
                    <li class="has-sub">
                      <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#buttons" aria-expanded="false" aria-controls="buttons">
                        <span class="nav-text">Buttons</span>
                        <b class="caret"></b>
                      </a>
                      <ul class="collapse" id="buttons">
                        <div class="sub-menu">
                          <li>
                            <a href="button-default.html">Button Default</a>
                          </li>
                          <li>
                            <a href="button-dropdown.html">Button Dropdown</a>
                          </li>
                        </div>
                      </ul>
                    </li>
                  </div>
                </ul>
              </li> -->
              <li class="has-sub  expand">
                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#users" aria-expanded="false" aria-controls="users">
                  <i class="mdi mdi-image-filter-none"></i>
                  <span class="nav-text">My Account</span>
                  <b class="caret"></b>
                </a>
                <ul class="collapse " id="users" data-parent="#sidebar-menu">
                  <div class="sub-menu">
                    <li>
                      <a class="sidenav-item-link " href="/user/my-account/profile">
                        <span class="nav-text">Profile</span>
                      </a>
                    </li>
                    <li >
                      <a class="sidenav-item-link" href="user-activities.html">
                        <span class="nav-text">User Activities</span>
                      </a>
                    </li>
                    <li class="active">
                      <a class="sidenav-item-link" href="user-profile-settings.html">
                        <span class="nav-text">User Profile Settings</span>
                      </a>
                    </li>
                    <li >
                      <a class="sidenav-item-link" href="/user/my-account/settings">
                        <span class="nav-text">User Account Settings</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="user-planing-settings.html">
                        <span class="nav-text">User Planing Settings</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="user-billing.html">
                        <span class="nav-text">User billing</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="user-notify-settings.html">
                        <span class="nav-text">User Notify Settings</span>
                      </a>
                    </li>
                  </div>
                </ul>
              </li>
              
              <li class="has-sub">
                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#other-page" aria-expanded="false" aria-controls="other-page">
                  <i class="mdi mdi-file-multiple"></i>
                  <span class="nav-text">Other pages</span>
                  <b class="caret"></b>
                </a>
                <ul class="collapse" id="other-page" data-parent="#sidebar-menu">
                  <div class="sub-menu">
                    <li>
                      <a class="sidenav-item-link" href="invoice.html">
                        <span class="nav-text">Invoice</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="404.html">
                        <span class="nav-text">404 page</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="page-comingsoon.html">
                        <span class="nav-text">Coming Soon</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="page-maintenance.html">
                        <span class="nav-text">Maintenance</span>
                      </a>
                    </li>
                  </div>
                </ul>
              </li>
              <li class="section-title"> Documentation </li>
              <li>
                <a class="sidenav-item-link" href="getting-started.html">
                  <i class="mdi mdi-airplane"></i>
                  <span class="nav-text">Getting Started</span>
                </a>
              </li>
              <li class="has-sub">
                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#customization" aria-expanded="false" aria-controls="customization">
                  <i class="mdi mdi-square-edit-outline"></i>
                  <span class="nav-text">Customization</span>
                  <b class="caret"></b>
                </a>
                <ul class="collapse" id="customization" data-parent="#sidebar-menu">
                  <div class="sub-menu">
                    <li>
                      <a class="sidenav-item-link" href="navbar-customization.html">
                        <span class="nav-text">Navbar</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="sidebar-customization.html">
                        <span class="nav-text">Sidebar</span>
                      </a>
                    </li>
                    <li>
                      <a class="sidenav-item-link" href="styling.html">
                        <span class="nav-text">Styling</span>
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
                  <a href="user-account-settings.html" data-toggle="tooltip" title="Profile settings">
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