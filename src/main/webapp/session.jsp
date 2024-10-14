<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<hr>
----------Session Info----------<br>
sessionScope.user_id : ${sessionScope.user_id}<br>
sessionScope.auth    : ${sessionScope.auth}<br>
sessionScope.user_pw : ${sessionScope.user_pw}<br>
sessionScope.baseURL :${sessionScope.baseURL}<br>
----------Cookie Info ---------------<br>
cookie.autoLogin.value : ${cookie.autoLogin.value}<br>
cookie.cookieId.value   : ${cookie.cookieId.value}<br>
cookie.cookiePw.value   : ${cookie.cookiePw.value}<br>
----------page Info------------------<br>
pageContext.request.requestURI  : ${pageContext.request.requestURI}<br>
pageContext.request.requestURL  : ${pageContext.request.requestURL}<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
