var login = {
	check:function(){
		
		var name = document.getElementById('name').value;
		var pwd = document.getElementById('pwd').value;
		
		
		if(!name){
			
			document.getElementById("pw").innerHTML='name is null';
			return false;
		}
		

		var url = "/index/index/check";
		var data = {'name':name,'pwd':pwd};
		$.post(url,data,function(result){
			var re = result.status;
			if(re == 1){
				var obj = document.getElementById('pw');
				obj.style.color='red';
				document.getElementById('pw').innerHTML = "";
				document.getElementById("pw").innerHTML='user exist';
				return false;
			}else{
				var obj = document.getElementById('pw');
				obj.style.color='green';
				document.getElementById('pw').innerHTML = "";
				document.getElementById("pw").innerHTML='Available';
			}
			
			
		});
		
	}
}