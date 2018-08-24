<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/view/template/header.jsp"%>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <title>Product Detail</title>
            <p class="lead">Here is the detailed information of product</p>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources//images/${product.productId}.png"/>" alt="image" style="width:100%;"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.description}</p>
                    <p>Manufacturer Name:${product.productManufacturer}</p>
                    <p>Category: ${product.productCategory}</p>
                    <p>Condition: ${product.productCondition}</p>
                    <p>Price: ${product.productPrice}</p>
                </div>
            </div>
        </div>

        <%@ include file="/WEB-INF/view/template/footer.jsp"%>
