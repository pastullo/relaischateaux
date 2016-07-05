
function addOptionToChildrenSelect(element){
	for (i = 0; i <= 12; i++) {
		$('.children-select').append('<option value="'+i+'">'+i+'</select>');  
	}
}


function addEventToChildrenSelect(){

	$("#enquire_children").change(function(e){

		var children_number = $(this).val();

		if(children_number>0){
			// remove the children selects
			$('.children-select-list').html('');
			$('form.enquire-lg .form-group-children').fadeIn();
			for (i = 1; i <= children_number; i++) {
				$('form.enquire-lg .children-select-list').append('<div class="form-group row"><label class="col-sm-5 control-label">Child '+i+' Age</label><div class="col-sm-7"><select name="children_'+i+'_age" class="form-control children-select"><option value="false">Choose age</option></select></div></div>');
			}
			addOptionToChildrenSelect();
		}else{
			$('form.enquire-lg .form-group-children').fadeOut();
		}


	});
}

function addEventToBookNowBtn(){
	// dismiss the modal and scroll to the enquire form
	$('a.book-now').click(function(e){
	    $('div.popover').remove();
		e.preventDefault();
		$('div.modal').modal('hide');
	    $('html, body').animate({
	    	scrollTop: $('#enquire').offset().top - $('nav').height()
	    }, 1200);
	});
}

function showInstructionalOverlay(){
	if($('a.video-control').length > 0){
		appendInstructionalPopover(1);
	}else{
		appendInstructionalPopover(2);
	}
}

