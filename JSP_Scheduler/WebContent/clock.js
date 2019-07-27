
function clock() {
		var now = new Date();
		var hours =0;
		var clk = document.getElementById('clock');
		var time;

		if (now.getHours() >= 0 && now.getHours() < 12){
			time = "오전"
			hours = now.getHours();
		}else{
			time = "오후 "
			hours=now.getHours()-12;
		}	
		time += hours + "시 " 
		+ now.getMinutes() + "분 "
		+ now.getSeconds() + "초 ";

		document.getElementById('clock').innerHTML = time;
		setTimeout("clock()", 1000);
	}

	clk();