
function clk() {
		var now = new Date();
		var hours =0;
		var clk = document.getElementById('clk');
		var time;

		if (now.getHours() >= 0 && now.getHours() < 12){
			time = "���� "
			hours = now.getHours();
		}else{
			time = "���� "
			hours=now.getHours()-12;
		}	
		time += hours + "�� " 
		+ now.getMinutes() + "�� "
		+ now.getSeconds() + "�� ";

		document.getElementById('clk').innerHTML = time;
		setTimeout("clk()", 1000);
	}
	clk();