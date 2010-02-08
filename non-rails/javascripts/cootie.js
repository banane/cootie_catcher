function playCootie(stage_value){
	
	if($('closed').visible()){
		turns = stage_value.length
		for (i=0;i<turns;i++){
			switchCootie();
			letter = stage_value.substring(i,(i+1));
			letter = letter.toUpperCase();
			alert(letter); /* acts as a kind of sleep, and user verification */
		}
		$('stage1').setStyle({
			backgroundColor: stage_value, width:100});
		$('stage1').update(stage_value);
		$('instructions').update("Pick a number.");	
		
	} else if ($('stage2').empty()) {
		turns = stage_value;
		for (i=1;i<=turns;i++){
		  switchCootie();
		  alert(i);
		}
		progressColor = $('stage1').getStyle('backgroundColor');
		$('stage2').setStyle({
			backgroundColor:progressColor , width:100});
		$('stage2').update(stage_value);
		$('instructions').update("Pick another number.");
	} else if ($('stage3').empty()){
		fortune_index = stage_value -1; /* arrays start at 0 */
		fortune = pickFortune(fortune_index);

		progressColor = $('stage1').getStyle('backgroundColor');
		$('stage3').setStyle({backgroundColor:progressColor});
		$('stage3').update(stage_value);
		
		$('instructions').setStyle({backgroundColor:progressColor});
		$('instructions').update(fortune);		
		$('play again').show();
		
	} else {
		$('instructions').update("oops!");
	}
}	

function switchCootie(){
	/*check if first time ever run */
	if ($('closed').visible()){
		$('closed').hide();
		$('wide').show();
	} else if ($('wide').visible()) {
		$('wide').hide(); 
		$('tall').show(); 
	} else {  
	  $('wide').show(); 
	  $('tall').hide(); 
	}	  	
}

function pickFortune(fortune_index){
 fortuneArray = [
   "You will be president.",
   "You like chocolate.", 
   "You will have a great day.",
   "Your cat's breath smells like cat food.", 
   "You will lose your favorite pencil.",
   "You will not get the money you expect.",
   "You will encounter a man with blond hair on an island. Beware.",
   "You will win a video game!"
 ];
	fortune = fortuneArray[fortune_index];
	return fortune;
	
}
