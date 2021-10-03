<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
    <!-- CSS only -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
            crossorigin="anonymous">

    <link
            href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900"
            rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="resources/css/main.css">


</head>

<body>

<jsp:include page="header.jsp"/>


<div class="container">
    <br>

    <form:form action="saveNews" modelAttribute="news" method="POST" class="row g-3 needs-validation">
        <form:hidden path="id"/>

        <div class="mb-3">
            <label class="form-label">Title of news</label>
            <form:textarea cssClass="form-control" rows="1" path="title"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Brief of news</label>
            <form:textarea cssClass="form-control" rows="3" path="brief"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Content of news</label>
            <form:textarea cssClass="form-control" rows="18" path="content"/>
        </div>


        <br>


        <div class="mb-3">
            <br>
            <button class="btn btn-outline-dark">Save news</button>
        </div>


    </form:form>
</div>

<!-- JavaScript Bundle with Popper -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>
</html>