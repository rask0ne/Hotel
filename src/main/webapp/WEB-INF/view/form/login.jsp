<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Login Page</title>
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap" />
    <spring:url value="/resources/css/signin.css" var="signin" />
    <link href="${bootstrap}" rel="stylesheet" />
    <link href="${signin}" rel="stylesheet" />
    <style>
        body{
            color:#c2610d;
            background-color: #590a06;
        }
        h1{
            color:#ccaaaa;
        }
        h2{
            color:#b59c9c;
        }
        a{
            color:#ffffff;
        }
        a:hover, a:focus {
            color: #ffffff;
        }
        .fig {
            text-align: center; /* Выравнивание по центру */
        }
    </style>
</head>
<body>
<form name="form" action="j_spring_security_check" method="post" class="form-signin">
    <security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')" var="isUSer"/>

    <br/>
    <c:if test="${not empty param.error}">
        <font size="5" color="#ff4500"><b><spring:message code="login.invalid" /></b></font>
    </c:if>

    <label for="inputEmail" class="sr-only"><spring:message code="email.field" /></label>
    <input id="inputEmail" class="form-control" name="j_username" value="admin@gmail.com" required autofocus/>
    <p></p>
    <label for="inputPassword" class="sr-only"><spring:message code="password.field" /></label>
    <input type="password" id="inputPassword" class="form-control" name="j_password" value="12345678" required/>

    <input type="submit" value="<spring:message code="login.enter.button" />" class="btn btn-lg btn-primary btn-block" >
    <br/>

    <hr><p>
    <div class="fig">
        <a href="<%=request.getContextPath()%>?languageVar=en">EN</a>
        <a href="<%=request.getContextPath()%>?languageVar=ru">RU</a>
    </div>

    <br /><br />
    <p><spring:message code="login.example" />:</p>

    <b>Admin</b> <br />
    Login:<span style="color: whitesmoke">admin@gmail.com</span> Password: <span style="color: whitesmoke">12345678</span> <br />
    <b>User</b> <br />
    Login: <span style="color: whitesmoke">user@gmail.com</span> Password: <span style="color: whitesmoke">12345678</span>

</form>
</body>

</html>
