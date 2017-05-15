<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

  <jsp:attribute name="title">Hotel</jsp:attribute>

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
    <header>
      <div class="fig">
        <h1 class="page-header">
          <spring:message code="content.introMsg"/>
        </h1>
      </div>
      <p class="fig">
        <img src="/resources/images/hotel.jpg"/>
      </p>
    </header>
    <!-- Page Content -->
    <div class="container">

      <div class="row">
        <div class="fig">
          <h2 class="page-header"><spring:message code="content.info" /></h2>
        </div>
        <div class="col-md-6">
          <p><spring:message code="content.assortment.header" /></p>
          <ul>
            <li><spring:message code="content.assortment.climat" /></li>
            <li><spring:message code="content.assortment.tv" /></li>
            <li><spring:message code="content.assortment.bar" /></li>
            <li><spring:message code="content.assortment.safe" /></li>
            <li><spring:message code="content.assortment.sputnik" /></li>
            <li><spring:message code="content.assortment.communication" /></li>
            <li><spring:message code="content.assortment.tcstuff" /></li>
          </ul>
        </div>
        <div class="col-md-6">
          <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/personal.jpg" alt="">
        </div>
      </div>

      <!-- Image Section -->
      <div class="row">
        <div class="fig">
          <h2 class="page-header"><spring:message code="content.photoes" /></h2>
        </div>
        <div class="col-md-4 col-sm-6">
            <img class="img-responsive img-portfolio img-hover" src="/resources/images/showcase-1.jpg">
        </div>
        <div class="col-md-4 col-sm-6">
            <img class="img-responsive img-portfolio img-hover" src="/resources/images/showcase-2.jpg">
        </div>
        <div class="col-md-4 col-sm-6">
            <img class="img-responsive img-portfolio img-hover" src="/resources/images/showcase-3.jpg">
        </div>
        <div class="col-md-4 col-sm-6">
            <img class="img-responsive img-portfolio img-hover" src="/resources/images/showcase-4.jpg">
        </div>
        <div class="col-md-4 col-sm-6">
            <img class="img-responsive img-portfolio img-hover" src="/resources/images/showcase-5.jpg">
        </div>
        <div class="col-md-4 col-sm-6">
            <img class="img-responsive img-portfolio img-hover" src="/resources/images/showcase-6.jpg">
        </div>
      </div>

      <hr>

    </div>
    <!-- /.container -->
  </jsp:body>

</page:template>
