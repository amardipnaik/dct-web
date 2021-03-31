
<script type="text/javascript">

function addProduct()
{



alert("Image With Secret Text is Transmitted Successfully")


}
</script>


<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
@import url(http://fonts.googleapis.com/css?family=Lato:400,900);  /* <-- Just for the demo, Yes I like pretty fonts... */

.square {
    float:left;
    position: relative;
    width: 8%;
    padding-bottom : 8%; /* = width for a 1:1 aspect ratio */
    margin:1.66%;
   /*  background-color:#e8dede; */
    overflow:hidden;
}

.content {
    position:absolute;
    height:90%; /* = 100% - 2*5% padding */
    width:90%; /* = 100% - 2*5% padding */
    padding: 5%;
    
}

/*  For responsive images */

.content .rs{
    width:auto;
    height:auto;
    max-height:90%;
    max-width:100%;
}




img {
    border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    width: 70px;
}

img:hover {
    box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}


table, th , td  {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #f1f1f1;
}
table tr:nth-child(even) {
  background-color: #ffffff;
}

</style>


<body>






<!-- <div ng-repeat="x in productList">

<div class="square">
    <div class="content">
       
        <img class="rs" data-ng-src="data:image/jpg;base64,{{x.image}}"><br>
       <b>{{x.name}}</b>
      
    </div>
</div>



</div> -->


<table>
<th>Sr No</th>
<th>Image Name</th>
<th>Image Thumbnail</th>
<th>Transmit Image</th>




  <tr ng-repeat="x in productList">
     <td>{{ $index + 1 }}</td>
    <td>{{x.name}}</td>
     <td> <img class="rs" data-ng-src="data:image/jpg;base64,{{x.image}}"></td>
     <td><button onclick="addProduct()">Transmit Image</button></td>

       
  
     
         
      
     
  </tr>
</table>


</body>
</html>