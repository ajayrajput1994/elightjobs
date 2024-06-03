	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="<c:url value="/adm/plugin/jquery.min.js"/>"></script>
    <script src="<c:url value="/adm/plugin/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/adm/plugin/simplebar.min.js"/>"></script>
    <script src="https://unpkg.com/hotkeys-js/dist/hotkeys.min.js"></script>
    <script src="<c:url value="/adm/js/mono.js"/>"></script>
    <script src="<c:url value="/adm/js/chart.js"/>"></script>
    <script src="<c:url value="/adm/js/map.js"/>"></script>
    <script src="<c:url value="/adm/js/custom.js"/>"></script>
   <%--  <script src="<c:url value="/adm/plugin/toastr.min.js"/>"></script> --%>
    <%-- <script src="<c:url value="/adm/plugins/jquery.dataTables.min.js"/>"></script> --%>
    <script>
    function closetoast(){
        ("#toastmsg").hide();
        alert("complete");
    }
    </script>