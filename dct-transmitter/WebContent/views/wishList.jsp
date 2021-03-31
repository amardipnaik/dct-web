<style>
@import url(http://fonts.googleapis.com/css?family=Lato:400,900);  /* <-- Just for the demo, Yes I like pretty fonts... */

.square {
    float:left;
    position: relative;
    width: 16%;
    padding-bottom : 16%; /* = width for a 1:1 aspect ratio */
    margin:1.66%;
   /*  background-color:#4298a5; */
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

</style>
<body>

<!-- </br>
  <h1> My WishList
  </h1> -->
  
  <div ng-repeat="x in wishList">

<div class="square">
    <div class="content">
       
        <img class="rs" data-ng-src="data:image/jpg;base64,{{x.image}}"><br>
        <b>{{x.name}}-</b>{{x.price}}Rs<i>({{x.sale}}%)</i><br>
        <button ng-click="addCard(x.id)">Add To Card</button>
    </div>
</div>

</div>
  




</body>

