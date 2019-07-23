function daily_cont(year,month,date){
		document.getElementById('popUp_iF').src = "listCont.do?year=" + year + "&month=" + month + "&day=" + date;
}

function today_focus(){
	
	var now = new Date();
	var today = now.getDate().toString();

	document.getElementById(today).click();
		
}




