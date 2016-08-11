console.log("what up console we be lookin' for new cities!!!!");

var cities = ["Beijing","Guangzhou","Jingzhou","Aomen","Yunnan","Jiangnan",
"Guizhou","Xinjiang","Qiqihaer","Zibo","Boston","Newport","JerseyCity"];

var theWorld = function(){
	for(var i = 0; i < 13; i++){
		console.log("cities" + [i + 1]+ "is" + cities [i]);
		document.write (cities[i] +"<br>")
	}
}

theWorld();
