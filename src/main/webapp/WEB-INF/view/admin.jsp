<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/view/template/header.jsp"%>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <title>Administrator Page</title>
            <p class="lead">Admin of the website</p>
        </div>

        
        <c:if test="${pageContext.request.userPrincipal.name !=null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout" /> ">Logout</a>
            </h2>
        </c:if>
        
        <h3>
            <a href="<c:url value="/admin/productInventory" /> "/>Product Inventory
        </h3>

        <%@ include file="/WEB-INF/view/template/footer.jsp"%>
