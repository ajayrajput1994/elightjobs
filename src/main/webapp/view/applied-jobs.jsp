<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp" >
<jsp:param value="${title}" name="title"/>
</jsp:include>  
<body>
<div class="container-xxl bg-white p-0">
       <jsp:include page="navbar.jsp">
			<jsp:param value="${msg}" name="msg"/>
		</jsp:include>
		<div class="row">
			<div class="col-md-6 col-12">
				<div class="card">
					<div class="card-header text-center">
						<h4>All Jobs</h4>
					</div>
					<div class="card-body">
						<c:choose>
						<c:when test="${jobs!=null}">
						<table class="table">
							<c:forEach var="u" items="${jobs}">
							<tr>
							<td>${u.id}</td>
							<td>${u.role}</td>
							<td>${u.salary}</td>
							<td>${u.skills}</td>
							<td>${u.vacancy}</td>
							<td>${u.education}</td>
							<td>${u.employment}</td>
							<td>${u.shift}</td>
							<td>${u.location}</td>
							</tr>
							</c:forEach>
						</table>
						</c:when>
						<c:otherwise>
						<h3 class="text-center">Jobs not found</h3>
						</c:otherwise>
						</c:choose>	
					</div>
				</div>
			</div>
		</div>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>