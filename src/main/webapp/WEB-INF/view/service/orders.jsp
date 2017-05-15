<!DOCTYPE html>

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/js/bootstrap-select.min.js"></script>

<style type="text/css">
    #bootstrapSelectForm .selectContainer .form-control-feedback {
        /* Adjust feedback icon position */
        right: -15px;
    }
</style>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
        <!-- Page Content -->
        <div class="container">
            <c:if test="${not empty serverMessage}">
                <h3 style="color:green">
                    <c:out value="${serverMessage}"/>
                </h3>
            </c:if>
            <!-- Content Row -->
            <div class="row">
                <!-- Sidebar Column -->
                <div class="fig">
                    <c:url value="/order/do" var="send"/>
                    <!-- Contact Form -->
                    <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
                    <div class="row">
                        <div class="fig">
                            <h3><spring:message code="service.orders.make.header" /><p></p></h3>
                            <ul class="list-unstyled list-inline list-social-icons">
                                <form:form name="sentMessage" id="contactForm" action="${send}"
                                           method="post" modelAttribute="EmailModel">
                                    <div class="control-group form-group">
                                        <div class="controls">
                                            <label><spring:message code="email.details.send.name" />:</label>
                                            <input type="text" class="form-control" id="name" name="username"
                                                   required data-validation-required-message="Please enter your name.">
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                    <div class="control-group form-group">
                                        <div class="controls">
                                            <label><spring:message code="email.details.send.phone" />:</label>
                                            <input type="tel" class="form-control" id="phone" name="number"
                                                   required data-validation-required-message="Please enter your phone number.">
                                        </div>
                                    </div>
                                    <div class="control-group form-group">
                                        <div class="controls">
                                            <label><spring:message code="service.order.from" />:</label>
                                            <input type="text" class="form-control" id="datetimepicker1" name="beginData"
                                                   required data-validation-required-message="Please enter begin of period for order." />
                                        </div>
                                    </div>
                                    <div class="control-group form-group">
                                        <div class="controls">
                                            <label><spring:message code="service.order.for" />:</label>
                                            <input type="text" class="form-control" id="datetimepicker2" name="toData"
                                                   required data-validation-required-message="Please enter begin of period for order." />
                                        </div>
                                    </div>
                                    <div id="success"></div>
                                    <!-- For success/fail messages -->
                                    <button type="submit" class="btn"><spring:message code="service.order.do" /></button>
                                </form:form>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /.row -->

            <hr>
        </div>

        <!-- /.container -->

    </jsp:body>
</page:template>

<script type="text/javascript">
    $(function () {
        $('#datetimepicker1').datetimepicker();
        $('#datetimepicker2').datetimepicker();
    });
</script>
