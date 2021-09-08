function roleClick(){
	var input = document.getElementById("input");
    var selectBox = document.getElementById("select-box");
    var selected = selectBox.options[selectBox.selectedIndex].text
	input.style.display = "inline-block";
}
