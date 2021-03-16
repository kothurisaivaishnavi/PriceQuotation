<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en" >
   <head>
      <meta charset="UTF-8">
      <title>shopping cart</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
	<style>
	@import url('https://fonts.googleapis.com/css?family=Roboto');

	body{
	    font-family: 'Roboto', sans-serif;
	}
	* {
	    margin: 0;
	    padding: 0;
	}
	i {
	    margin-right: 10px;
	}


	input:focus,
	button:focus,
	.form-control:focus{
	    outline: none;
	    box-shadow: none;
	}
	.form-control:disabled, .form-control[readonly]{
	    background-color: #fff;
	}
	.table tr,
	.table tr td{
	    vertical-align: middle;
	}
	.button-container{
	    display: flex;
	    align-items: center;
	}
	.button-container .form-control{
	    max-width: 80px;
	    text-align: center;
	    display: inline-block;
	    margin: 0px 5px;
	}
	#myTable .form-control{
	    width: auto;
	    display: inline-block;
	}
	.cart-qty-plus,
	.cart-qty-minus{
	    width: 38px;
	    height: 38px;
	    background-color: #fff;
	    border: 1px solid #ced4da;
	    border-radius: .25rem;
	}
	.cart-qty-plus:hover,
	.cart-qty-minus:hover{
	    background-color: #5161ce;
	    color: #fff;
	}
	.img-prdct{
	    width: 50px;
	    height: 50px;
	    background-color: #5161ce;
	    border-radius: 4px;
	}
	.img-prdct img{
	    width: 100%;
	}

	thead tr{
	    background-color: #343A40;
	    color: white;
	}
	.img-prdct{
	    width:100px !important;
	    height:100px !important;
	}
	.cart-qty-plus{
	    background-color:#00a5e8;
	    color:white;
	    font-weight: 600;
	}
	.cart-qty-minus{
	    background-color:#00a5e8;
	    color:white;
	    font-weight: 600;
	}
	</style>  
	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
   </head>
    <body style="background-color: activeborder;">
    <div class="jumbotron" style="background-color: aqua;">
    <center>
    <h3>COGNIZANT E-COMMERCE</h3>
    <small>A place for your daily needs</small> </center>
    <img alt="" src="/images/priceGIF.gif" style="position:relative;">
      </center>
     
    </div>
      <form:form method="get" action="/index">
      <button type="submit" class="btn btn-dark">Home</button>
      </form:form>
     
      <form:form action="/userLogOut" method="get">
      <button type="submit" class="btn btn-dark" style="float: right;">Logout</button>
      </form:form>
      
    </div>	
   <div class="container-fluid mt-5">
   <h2 class="mb-5 text-center">Shopping Cart</h2>
   <div class="row justify-content-center">
      <div class="col-md-8">
         <div class="table-responsive">
            <table id="myTable" class="table">
               <thead>
                  <tr>
                   
                     <th>Name</th>
                     <th>Qty</th>
                     <th>Price</th>
                     <th class="text-right">
                        <span id="amount" class="amount">Amount</span>
                     </th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     
                     <td>
                        <p>Lenovo</p>
                     </td>
                     <td>
                        <div class="button-container">
                           <button class="cart-qty-plus" type="button" value="+">+</button>
                           <input type="text" name="qty" min="0" class="qty form-control" value="0"/>
                           <button class="cart-qty-minus" type="button" value="-">-</button>
                        </div>
                     </td>
                     <td>
                        <input type="text" value="4500" class="price form-control" disabled>
                     </td>
                     <td align="right">Rs. <span id="amount" class="amount">0</span>
                     </td>
                  </tr>
                 <!--  <tr>
   
    <td>
      <p>Product Two</p>
   </td>
   <td>
      <div class="button-container">
         <button class="cart-qty-plus" type="button" value="+">+</button>
         <input type="text" name="qty" min="0" class="qty form-control" value="0"/>
         <button class="cart-qty-minus" type="button" value="-">-</button>
      </div>
   </td>
   <td>
      <input type="text" value="125" class="price form-control" disabled>
   </td>
   <td align="right">$ <span id="amount" class="amount">0</span>
   </td>
</tr>
<tr>
   <td>
      <div class="product-img">
         <div class="img-prdct">
            
         </div>
      </div>
   </td>
   <td>
      <p>Product Three</p>
   </td>
   <td>
      <div class="button-container">
         <button class="cart-qty-plus" type="button" value="+">+</button>
         <input type="text" name="qty" min="0" class="qty form-control" value="0"/>
         <button class="cart-qty-minus" type="button" value="-">-</button>
      </div>
   </td>
   <td>
      <input type="text" value="250" class="price form-control" disabled>
   </td>
   <td align="right">$ <span id="amount" class="amount">0</span>
   </td>
</tr>
<tr>
   <td>
      <div class="product-img">
         <div class="img-prdct">
            <img src="2.jpg">
         </div>
      </div>
   </td>
   <td>
      <p>Product Four</p>
   </td>
   <td>
      <div class="button-container">
         <button class="cart-qty-plus" type="button" value="+">+</button>
         <input type="text" name="qty" min="0" class="qty form-control" value="0"/>
         <button class="cart-qty-minus" type="button" value="-">-</button>
      </div>
   </td>
   <td>
      <input type="text" value="300" class="price form-control" disabled>
   </td>
   <td align="right">$ <span id="amount" class="amount">0</span>
   </td> 
</tr>-->
               </tbody>
               <tfoot>
                  <tr>
                     <td colspan="1"></td>
                     <td align="right">
                        <strong>TOTAL = Rs.  <span id="total" class="total">0</span>
                        </strong>
                     </td>
                  </tr>
               </tfoot>
            </table>
         </div>
      </div>
   </div>
</div>
<script src='https://code.jquery.com/jquery-3.4.1.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script>
$(document).ready(function(){
    update_amounts();
    $('.qty, .price').on('keyup keypress blur change', function(e) {
        update_amounts();
    });
});
function update_amounts(){
    var sum = 0.0;
    $('#myTable > tbody  > tr').each(function() {
        var qty = $(this).find('.qty').val();
        var price = $(this).find('.price').val();
        var amount = (qty*price)
        sum+=amount;
        $(this).find('.amount').text(''+amount);
    });
    $('.total').text(sum);
}
//----------------for quantity-increment-or-decrement-------
var incrementQty;
var decrementQty;
var plusBtn  = $(".cart-qty-plus");
var minusBtn = $(".cart-qty-minus");
var incrementQty = plusBtn.click(function() {
    var $n = $(this)
    .parent(".button-container")
    .find(".qty");
    $n.val(Number($n.val())+1 );
    update_amounts();
});

var decrementQty = minusBtn.click(function() {
    var $n = $(this)
    .parent(".button-container")
    .find(".qty");
    var QtyVal = Number($n.val());
    if (QtyVal > 0) {
        $n.val(QtyVal-1);
    }
    update_amounts();
});
</script>
   </body>
</html>