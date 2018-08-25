<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>



<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger">Check out cancelled</h1>

                    <p>Your Check out process cancelled! you may continue shopping..</p>
                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <p>
                    <a href="<c:url value="/product/productList" />" class="btn btn-primary">
                        <span class="glyphicon-hand-left glyphicon"></span> Products
                    </a>
                </p>
            </div>

        </section>
    </div>
</div>
</body>
<%@include file="/WEB-INF/view/template/footer.jsp" %>