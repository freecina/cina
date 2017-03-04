<script type="text/javascript">    
	  
	 function getForm()    
 {    
		     var form = document.getElementById("form1");   //获取id为“form1”表单中所有的属性的数据    
		     var content = form.elements(0).value;   //获取form表单中第一个元素的值  
		     alert("姓名:"+content); //就是username的值    
		         
		     var pass = document.getElementById("password").value;   //直接通过元素的属性Id来直接获取    
		     alert("password : " + pass);    
		       
		     var sex = document.getElementsByName('sex'); //通过元素属性name获取sex的值  
		     for(var i = 0; i < sex.length; i++)  
			     {  
			             if(sex[i].checked)  
				             alert("性别："+sex[i].value);  
			         }  
		           
		     var addr = document.getElementById("addr").value;  //直接通过元素的属性Id来直接获取选择下拉菜单的值  
		     alert("来自"+addr);  
		       
		     var fruits = document.getElementsByName("fruits"); //通过元素属性name获得所有name="fruits"的值  
		     var str ="";  
		     for(var j=0; j<fruits.length;j++)  
			     {  
			             if(fruits[j].checked)  
				             str += fruits[j].value+",";  
			          }  
		     alert("你选择的食物是："+str);  
		  }  
  
 </script>    


