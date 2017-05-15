<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<page:template>
    <jsp:body>
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
        <c:url value="/jstlReturnUsers" var="jstlReturnUsers" />

        <!-- Page Content -->
        <div class="container">

            <!-- Content Row -->
            <div class="row">
                <!-- Sidebar Column -->
                <div class="fig">
                    <h1 class="page-header"><spring:message code="users.header" /></h1>
                    <div class="list-group">
                        <a href="${jstlReturnUsers}" class="list-group-item"><spring:message code="users.select.all" /></a>
                    </div>
                </div>
                <!-- Content Column -->
                <div class="fig">
                    <c:if test="${not empty resultObjectList}">
                        <b><spring:message code="users.list" /></b>
                        <table>
                            <c:forEach var="userVar" items="#{resultObjectList}">
                                <tr>
                                    <td><b>ID: </b></td>
                                    <td><c:out value="${userVar.idUser}"/></td>
                                </tr>
                                <tr>
                                    <td><b><spring:message code="users.username" />: </b></td>
                                    <td><c:out value="${userVar.username}"/></td>
                                </tr>
                                <tr><td> <br /></td></tr>
                            </c:forEach>
                        </table>
                    </c:if>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <div class="row">

                <div class="fig">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_SUPER_USER')">
                       <b><spring:message code="security.access.admin" /></b>
                        <img src="/resources/images/admin.jpg"/>
                    </security:authorize>

                </div>

                <div class="fig">
                    <security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_SUPER_USER', 'ROLE_USER')">
                        <b><spring:message code="security.access.user" /></b>
                        <img src="/resources/images/user_and_admin.jpg"/>
                    </security:authorize>

                </div>
            </div>

        </div>
        <!-- /.container -->

    </jsp:body>
</page:template>

