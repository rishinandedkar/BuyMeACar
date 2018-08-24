<%--
  Created by IntelliJ IDEA.
  User: Rishi Nandedkar
  Date: 8/23/2018
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/view/template/header.jsp"%>



<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <title>Edit Product</title>
            <p class="lead">Update product to the inventory</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct" method="post" commandName="product"
                   enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}" />

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-control" value="${product.productImage}"/>
        </div>


        <div class="form-group">
            <label for = "category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument" />Instrument</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="record" />Record</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory" />Accessory</label>

        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="description" id="desciption" class="form-control" value="${product.description}"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-control" value="${product.productPrice}"/>
        </div>

        <div class="form-group">
            <label for = "condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new" />New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used" />Used</label>
        </div>

        <div class="form-group">
            <label for = "productStatus">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="condition" value="active" />Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="condition" value="inactive" />Inactive</label>
        </div>

        <div class="form-group">
            <label for="unitsInStock">Unit In Stock</label>
            <form:input path="unitsInStock" id="unitsInStock" class="form-control" value="${product.unitsInStock}"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-control" value="${product.productManufacturer}"/>
        </div>

        <div class="form-group">
            <label for="productImage" class="control-label">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="Submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" /> " class="btn btn-default">Cancel</a>

        </form:form>

        <%@ include file="/WEB-INF/view/template/footer.jsp"%>

