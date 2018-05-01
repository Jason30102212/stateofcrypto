<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>State of Crypto</title>
	<jsp:include page="/resources/includes/bootstrap-include.jsp" />
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css/master-template.css">	
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/css/home-page.css">	
	
</head>
<body>
	<jsp:include page="/resources/includes/main-header-include.jsp" />
	<div class="jumbotron">
		<div class="container">
    		<h1 class="font-weight-bold text-letter-spacing">State of Crypto</h1>
    		<p class="font-weight-bold text-letter-spacing">Blockchain World Wide</p>
    	</div>
  	</div>
  	<div class="section-logo-bar bg-carbon">
		<div class="container">
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center heading-text-div">
				<h2 class="font-weight-bold">Your source for keeping an eye on the cryptospace</h2>
			</div>
		</div>
		<div class="row feedback-slider">
			<div class="col-md-6 ">
			</div>
			<div class="col-md-6">
			</div>
		</div>
	</div>
	<jsp:include page="/resources/includes/main-footer-include.jsp" />
</body>
</html>