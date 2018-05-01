<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<security:authorize var="loggedIn" access="isAuthenticated()"/>

<nav class="navbar navbar-toggleable-md navbar-expand-lg navbar-light bg-light">
		  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="${pageContext.request.contextPath}/">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <c:if test="${loggedIn}">
		      <li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/member/profile">Profile</a>
		      </li>
		  </c:if>
	      <li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath}/platform/projects">Current Projects</a>
	      </li>
	    </ul>

		<!-- Added logout button -->
		
		
		<c:if test="${loggedIn}">
			<div class="header-welcome">
				Welcome <security:authentication property="principal.username"/>
			</div>
			<form:form action="${pageContext.request.contextPath}/logout" method="POST">
				<input type="submit" value="logout" />
			</form:form>
		</c:if>
		<c:if test="${!(loggedIn)}">
			<form:form action="${pageContext.request.contextPath}/register/showRegistrationForm" method="GET">
				<input type="submit" value="register">
			</form:form>
			<form:form action="${pageContext.request.contextPath}/showMyLoginPage" method="GET">
				<input type="submit" value="login" />
			</form:form>
		</c:if>
  </div>
</nav>