function playCootie(stage, state){
	if(stage == 1){

		turns = $('game_color_name').value.length
		for (i=1;i<=turns;i++){
			if (i==0) {
				state = 'wide';
			}
			$('closed').hide();
			state = switchCootie(state);

			alert(i); /* acts as a kind of sleep, and user verification */
		}
	   if (state == 'tall'){
		   $('numbers_tall').show();
		} else {
		   $('numbers_wide').show();	
		}

	} else if (stage == 2) {
		turns = $('game_numbers').value;
		for (i=1;i<=turns;i++){
		  state = switchCootie(state);
		  alert(i);
		}
	   if (state == 'tall'){
		   $('numbers2_tall').show();
		} else {
		   $('numbers2_wide').show();	
		}
		
		
	} else if (stage == 3){
		fortune_id = "fortune_" + $('game_numbers2').value;
      $(fortune_id).show();		
		
	} else {
		/* do nothing */
		
		
	}
}	

function switchCootie(state){
	if (state == 'wide') {
		$('wide').hide(); 
		$('tall').show(); 
		state = 'tall' 
	} else {  
	  $('wide').show(); 
	  $('tall').hide(); 
	  state = 'wide' 
	}	  	
	return state;
}

function sleep(milliseconds) {   
	var start = new Date().getTime();   
        
	for (var i = 0; i < 1e7; i++) {   
		if ((new Date().getTime() - start) > milliseconds) {   
			break;   
		}   
	}   
}   	
