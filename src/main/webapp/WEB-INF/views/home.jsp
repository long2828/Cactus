2021-09-01<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<c:url value='/css/paypal.css'  />">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="row">
    <div class="col-75">
        <div class="container">
            <form method="post"  action="<c:url value='/pay'  />">
                <div class="col-50">
                    <h3>Payment</h3>
                    <label>Accepted Cards</label>
                    <div class="icon-container">
                        <i class="fa fa-cc-visa" style="color:navy;"></i>
                        <i class="fa fa-cc-amex" style="color:blue;"></i>
                        <i class="fa fa-cc-mastercard" style="color:red;"></i>
                        <i class="fa fa-cc-discover" style="color:orange;"></i>
                    </div>
                    <label for="price">Total</label>
                    <input type="text" id="price" name="price" value="50">
                    <label for="currency">Currency</label>
                    <input type="text" id="currency" name="currency" placeholder="Enter Currency">
                    <label for="method">Payment Method</label>
                    <input type="text" id="method" name="method" placeholder="Payment Method">
<!--                     <label for="intent">Intent</label> -->
<!--                     <input type="text" id="intent" name="intent" value="sale"> -->
<!--                     <label for="description">Payment Description</label> -->
<!--                     <input type="text" id="description" name="description" placeholder="Payment Description"> -->

                </div>

                <input type="submit" value="Continue to checkout" class="btn">
            </form>
        </div>
    </div>
    <div class="col-25">
        <div class="container">
            <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>
            <p><a href="#">教師資格購買</a> <span class="price">$50</span></p>
            <hr>
            <p>Total <span class="price" style="color:black"><b>$50</b></span></p>
        </div>
    </div>
</div>

</body>
</html>