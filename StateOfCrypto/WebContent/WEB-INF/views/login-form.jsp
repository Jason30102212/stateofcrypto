
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<jsp:include page="/resources/includes/bootstrap-include.jsp" />
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css/master-template.css">	
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css/login-form.css">	
	
</head>
<body>
	<jsp:include page="/resources/includes/main-header-include.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-md-4">
			</div>
			<div id="loginbox" style="margin-top: 50px;"
				class="mainbox col-md-3 col-md-offset-4 col-sm-6 col-sm-offset-2">
				
				<div class="panel panel-info">
	
					<div class="panel-heading">
						<div class="panel-title">Sign In</div>
					</div>
	
					<div style="padding-top: 30px" class="panel-body">
	
						<!-- Login Form -->
						<form:form action="${pageContext.request.contextPath}/authenticateTheUser" 
								   method="POST" class="form-horizontal">
	
						    <!-- Place for messages: error, alert etc ... -->
						    <div class="form-group">
						        <div class="col-xs-15">
						            <div>
		
									<!-- Check for login error -->
									<c:if test="${param.error != null}">
										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											Invalid username and password.
										</div>
									</c:if>
																		
									<!-- Check for logout -->	
									<c:if test="${param.logout != null}">	            
										<div class="alert alert-success col-xs-offset-1 col-xs-10">
											You have been logged out.
										</div>
									</c:if>	
						          </div>
						       </div>
						    </div>
	
							<!-- User name -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
								
								<input type="text" name="username" placeholder="username" class="form-control">
							</div>
	
							<!-- Password -->
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
								
								<input type="password" name="password" placeholder="password" class="form-control" >
							</div>
	
							<!-- Login/Submit Button -->
							<div style="margin-top: 10px" class="form-group">						
								<div class="col-sm-6 controls">
									<button type="submit" class="btn btn-success">Login</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/resources/includes/main-footer-include.jsp" />
</body>
</html>