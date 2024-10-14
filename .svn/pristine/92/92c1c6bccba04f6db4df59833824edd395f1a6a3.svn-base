<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Image View</h1>
	<hr>
	<c:choose>
		<c:when test="${not empty imageData.file_name }">
			<p>file name: ${imageData.file_name }</p>
			<img src="data:image/jpeg;base64,${imageData.base64encodedImage}" alt="Image" />
		</c:when>
		<c:otherwise>
			<p>No image data found.</p>
		</c:otherwise>
	</c:choose>
	
	
</body>
</html>