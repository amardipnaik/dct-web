
<script type="text/javascript">

function orderNow()
{
alert("Order Placed Successfully")

form.action = "<%=request.getContextPath()%>/addOrder";
	form.method = "post";
	form.submit();
}
</script>

<h2>Order Now</h2>

<h4>Product Details</h4>

<b>    Product Name:</b>
     {{productDetails.name}}<br>
     
     <b>    Product Price:</b>
     {{productDetails.price}}<br>

<h4>Communication Details</h4>


   <b>    Building:</b>
     <input type="text" placeholder="Enter Building Name" name="bd" id="bd" /><br>
 <!--     Product Category:
     <input type="text" placeholder="Enter Product Category" name="pcat" id="pcat" /><br> -->
        <b>   Street :</b>
    
       <input type="text" placeholder="Enter Street Name" name="st" id="st" /><br>
       <b>    City :</b>
     <input type="text" placeholder="Enter City Name" name="ct" id="ct" /><br>
     
     <b> State :</b>
     <input type="text" placeholder="Enter State Name" name="ste" id="ste" /><br>
         <b> Pin Code:</b>
          <input type="text" placeholder="Enter Pin Code" name="pn" id="pn" /><br>


 <b>Select Payment Mode<b>
    <form> 
      <label for="first">Cash On Delivary</label>
      <input id="first" type="radio" name="content" ng-model="content" value="first">
      
      Card Payment
      <input id="other" type="radio" name="content" ng-model="content" value="other">
    </form>
    


<div  ng-show="content == 'other'">
<b>Card Number:</b>
     <input type="text" placeholder="Enter Card Number" name="cn" id="cn" /><br>
     
     <b> Month/Year:</b>
     <input type="text" placeholder="Enter Month/Year" name="mn" id="mn" /><br>
     
       <b>  CVV Number:</b>
     <input type="text" placeholder="Enter CVV Number" name="cvn" id="cvn" />
     </div>
     
     
     <button ng-click="addOrder()">Order Now</button>
     
    
     
     
  <!--    <br>
      <ul>
    <li ng-repeat='(key, value) in resultData'>
       <h4> <span>RESULT: {{value}}</span></h4>
    </li>
</ul> -->