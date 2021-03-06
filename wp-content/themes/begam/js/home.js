function createWaypoint (triggerElementId, animatedElement, className, offsetVal, functionName, reverse) {
                var waypoint = new Waypoint({
                    element: document.getElementById(triggerElementId),
                    handler: function(direction) {
                        if (direction === 'down') {
                            jQuery(animatedElement).addClass(className);

                            if(typeof functionName === 'function') {
                                functionName.call();
                            }
                        }

                        else {

                            if(reverse) {
                                jQuery(animatedElement).removeClass(className);

                                if(typeof functionName === 'function') {
                                    functionName.call();
                                }
                            }

                        }
                    },
                    offset: offsetVal
                    // Integer or percent
                    // 500 means when element is 500px from the top of the page, the event triggers
                    // 50% means when element is 50% from the top of the page, the event triggers
                });
            }

            //Waypoint Instance - Add Class To Element
            //Template -> createWaypoint("id-name", ".class-name", "class-to-be-added", offset-value, null, true);
            //Example -> createWaypoint("section-2", ".section-2-orange-dot", "section-2-orange-dot-active", 500, null, true);

            //Waypoint Instance - Call Function
            //Template -> createWaypoint("id-name", null, null, null, function-name, true);
            //Example -> createWaypoint("section-2", null, null, null, test, true);






createWaypoint("section_one", "#section_one", "visible", 300, null, false);


createWaypoint("section_two", ".start_button, #section_two", "visible", 300, null, true);


createWaypoint("section_three", "#section_three", "visible", 300, null, false);


createWaypoint("section_four", "#section_four", "visible", 0, null, false);

createWaypoint("section_five", "#section_five", "visible", 400, null, false);

createWaypoint("section_six", "#section_six", "visible", 250, null, false);








// select injury

$('.select_mock_wrapper').on('click', function(e) {

		$(this).toggleClass('open');

});



$(document).click(function(event){
    
    if (!($(event.target).closest(".select_mock_wrapper.open").length)) {
        
        $(".select_mock_wrapper").removeClass('open');
    
    }
});





$('.mock_dropdown li').on('click', function() {
    
    
    var text = $(this).text();
    
    
    $('span.input_left_select_copy').text(text);
    
    
    if ($('span.input_left_select_copy').text() === "select how you were injured") {
	        
	  
	  } 
	  
	  else {
	        
			 		
			$('.form_overlay_wrapper').addClass('open');
			
			$('#input_1_6, #input_2_6, #input_3_6').val(text);
			
			$('li#field_1_6, li#field_2_6, li#field_3_6').addClass('input_has_value');
			
			
			
		}
       

});









	
	var windowWidth = $(window).width();



	function checkWidthhover() {
    
    if (windowWidth < 1066) {
        
      
      $('.case_results_single_slide').on('click', function(e) {
        
      	
      	//$('.hover_content').removeClass('hover');
      	
      	$(this).find('.hover_content').toggleClass('hover');
      
      
      });
    	    	   		
    		
    } 
    
    
  };
	

checkWidthhover();





