function roleClick(){
	var input = document.getElementById("input");
    var selectBox = document.getElementById("select-box");
    var roleBox = document.getElementById("role");
    var selected = selectBox.options[selectBox.selectedIndex].text
    if(selected == "분류"){
        input.style.display = "none";
        roleBox.style.display = "inline-block";
    }
    else{
	 	input.style.display = "inline-block";
	 	roleBox.style.display = "none";
	}
}
