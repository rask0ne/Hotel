<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<c:url value="/users.html" var="users" />
<c:url value="/orders.html" var="orders" />
<c:url value="/security.html" var="security" />

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><spring:message code="navMenu.home"/></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')" var="isUSer"/>

                <li>
                    <a href="${users}"><spring:message code="users.header" /></a>
                </li>
                <li>
                    <a href="${orders}"><spring:message code="orders.header" /></a>
                </li>
                <c:if test="${not isUSer}">
                    <li> <a style="color: #999999;" href="<c:url value="/login.html"/>"><spring:message code="navMenu.login"/></a> </li>
                </c:if>

                <c:if test="${isUSer}">
                    <li style="padding-top: 15px; padding-bottom: 15px; color: #999999">
                        <security:authentication property="principal.username"/>
                    </li>
                    <li> <a style="color: #999999;" href="<c:url value="/j_spring_security_logout"/>"><spring:message code="navMenu.logout"/></a> </li>
                </c:if>
            </ul>
        </div>
    </div>
    <!-- /.container -->
</nav>
