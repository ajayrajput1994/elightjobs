<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<footer class="footer mt-auto">
  <div class="copyright bg-white">
    <p> &copy; <span id="copy-year"></span> Copyright Mono Dashboard Bootstrap Template by  </p>
  </div>
  <script>
    var d = new Date();
    var year = d.getFullYear();
    document.getElementById("copy-year").innerHTML = year;
  </script>
</footer>
 <!-- Card Offcanvas -->
    <div class="card card-offcanvas" id="contact-off">
      <div class="card-header">
        <h2>Contacts</h2>
        <a href="#" class="btn btn-primary btn-pill px-4">Add New</a>
      </div>
      <div class="card-body">
        <div class="mb-4">
          <input type="text" class="form-control form-control-lg form-control-secondary rounded-0" placeholder="Search contacts...">
        </div>
        <div class="media media-sm">
          <div class="media-sm-wrapper">
            <a href="user-profile.html">
              <img src="<c:url value="/adm/images/user-sm-05.jpg"/>" alt="User Image">
              <span class="active bg-primary"></span>
            </a>
          </div>
          <div class="media-body">
            <a href="user-profile.html">
              <span class="title">Selena Wagner</span>
              <span class="discribe">Designer</span>
            </a>
          </div>
        </div>
        <div class="media media-sm">
          <div class="media-sm-wrapper">
            <a href="user-profile.html">
              <img src="<c:url value="/adm/images/user-sm-04.jpg"/>" alt="User Image">
              <span class="active bg-primary"></span>
            </a>
          </div>
          <div class="media-body">
            <a href="user-profile.html">
              <span class="title">Walter Reuter</span>
              <span>Developer</span>
            </a>
          </div>
        </div>
        <div class="media media-sm">
          <div class="media-sm-wrapper">
            <a href="user-profile.html">
              <img src="<c:url value="/adm/images/user-sm-05.jpg"/>" alt="User Image">
            </a>
          </div>
          <div class="media-body">
            <a href="user-profile.html">
              <span class="title">Larissa Gebhardt</span>
              <span>Cyber Punk</span>
            </a>
          </div>
        </div>
        <div class="media media-sm">
          <div class="media-sm-wrapper">
            <a href="user-profile.html">
              <img src="<c:url value="/adm/images/user-sm-04.jpg"/>" alt="User Image">
            </a>
          </div>
          <div class="media-body">
            <a href="user-profile.html">
              <span class="title">Albrecht Straub</span>
              <span>Photographer</span>
            </a>
          </div>
        </div>
        <div class="media media-sm">
          <div class="media-sm-wrapper">
            <a href="user-profile.html">
              <img src="<c:url value="/adm/images/user-sm-04.jpg"/>" alt="User Image">
              <span class="active bg-danger"></span>
            </a>
          </div>
          <div class="media-body">
            <a href="user-profile.html">
              <span class="title">Leopold Ebert</span>
              <span>Fashion Designer</span>
            </a>
          </div>
        </div>
        <div class="media media-sm">
          <div class="media-sm-wrapper">
            <a href="user-profile.html">
              <img src="<c:url value="/adm/images/user-sm-05.jpg"/>" alt="User Image">
              <span class="active bg-primary"></span>
            </a>
          </div>
          <div class="media-body">
            <a href="user-profile.html">
              <span class="title">Selena Wagner</span>
              <span>Photographer</span>
            </a>
          </div>
        </div>
      </div>
    </div>
    <!-- Card Offcanvas END -->