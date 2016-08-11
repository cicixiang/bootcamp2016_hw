var username = prompt("what is your name?");


display_name(username);

function display_name(name){
	if (name.length > 10) {
		document.getElementById("name_heading").innerHTML = "your name is too long" 
	}else{
		document.getElementById("name_heading").innerHTML = "Hello " + name;
	}
}








// array

var fruits = {
	"apple",
	"kiwi",
	"mango",
	"banana",
	"watermelon"


};

var name = fruits[0];