<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<link
        href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900"
        rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">


<body>
<div class="container">
    <hr>

    <form action="showFormOfAddingNews" method="get">
        <button class="btn btn-outline-dark">Add news</button>
    </form>

    <br>


    <c:forEach var="news" items="${list_of_news}">
    <div
            class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">

            <h3 class="mb-0">
                <c:out value="${news.title}"/>
            </h3>
            <div class="mb-1 text-muted">
                <fmt:parseDate value="${news.date}" pattern="yyyy-MM-dd'T'HH:mm"
                               var="parsedDateTime" type="both"/>
                <fmt:formatDate pattern="dd.MM.yyyy HH:mm"
                                value="${parsedDateTime}"/>
            </div>
            <p class="card-text mb-auto">
                <c:out value="${news.brief}"/>
            </p>

            <c:url var="showNews" value="/news/showNews">
                <c:param name="newsId" value="${news.id}"/>
            </c:url>
            <a href="${showNews}" class="stretched-link">Continue reading</a>

        </div>
    </div>


    <div class="mt-3">
        <div class="d-flex justify-content-start align-items-center">


            <form action="<c:url value="/news/showFormOfUpdatingNews"/>" method="get">
                <input type="hidden" name="newsId" value="${news.id}"/>
                <button class="btn btn-outline-dark">Update news</button>
            </form>

            <div class="mx-3">
                <form action="deleteNews" method="get">
                    <input type="hidden" name="newsId" value="${news.id}"/>
                    <button class="btn btn-outline-dark">Delete news</button>
                </form>
            </div>
        </div>
    </div>


    <br>
    <br>
    </c:forEach>


</body>