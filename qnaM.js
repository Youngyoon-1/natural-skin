function select(){
			var qnaSelect = document.getElementById("qna-box");
			var selected = qnaSelect.options[qnaSelect.selectedIndex].text;
			if(selected == '상품'){
				product.style.display = "inline-block";
				}
			else{
				product.style.display = "none";
			}
		    
   }
   function resize(obj){
	obj.style.height = '1px';
	obj.style.height = (12 + obj.scrollHeight) + 'px';
	}
		
	