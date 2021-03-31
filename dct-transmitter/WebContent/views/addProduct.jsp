
<script type="text/javascript">

function addProduct()
{

	var form = document.productForm;

	 var pname = form.pname.value;
/* 	var pprice = form.pprice.value;
	var pbrand = form.pbrand.value;
	var sex = form.sex.value; */
	var file = form.file.value;
	
	if(pname=="")
	{
	alert("Please Enter Image Name !!!")
	return
	}



if(file=="")
{
alert("Please Upload File !!!")
return
}

alert("Image Added Successfully")

form.action = "<%=request.getContextPath()%>/addProduct";
	form.method = "post";
	form.submit();
}
</script>
<!-- <h2>Add Product</h2> -->

<form name="productForm" method="post" enctype="multipart/form-data">
    <b>Image Name:<b>
     <input type="text" placeholder="Enter Image Name" name="pname" id="pname" /><br><br>
     <b>Secret Text :<b>
     <input type="text" placeholder="Enter Secret Text" name="sec" id="sec" /><br>
 <!--     Product Category:
     <input type="text" placeholder="Enter Product Category" name="pcat" id="pcat" /><br> -->
      <!--    Patient Age :
    
       <input type="text" placeholder="Enter Product Price" name="pprice" id="pprice" /><br>
         Patient Location:
     <input type="text" placeholder="Product Brand" name="pbrand" id="pbrand" /><br>
     
     Select Category:<br>
     <input type="radio"  name="sex" id="sex">Male<br>
     <input type="radio"  name="sex" id="sex">Female<br> -->
        <b>Image   :<b>
  <input type="file" placeholder="Product Image" name="file" id="file" file-model="file" /><br>
<b>(Note:File Size Must Be Less Than 20K)<b>

     
     <button onclick="addProduct()"><b>Add Details<b></button>
     
     </form>
     
     
  <!--    <br>
      <ul>
    <li ng-repeat='(key, value) in resultData'>
       <h4> <span>RESULT: {{value}}</span></h4>
    </li>
</ul> -->