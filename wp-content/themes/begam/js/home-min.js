function createWaypoint(e,t,n,i,o,l){var c=new Waypoint({element:document.getElementById(e),handler:function(e){"down"===e?(jQuery(t).addClass(n),"function"==typeof o&&o.call()):l&&(jQuery(t).removeClass(n),"function"==typeof o&&o.call())},offset:i})}function checkWidthhover(){windowWidth<1066&&$(".case_results_single_slide").on("click",function(e){$(this).find(".hover_content").toggleClass("hover")})}createWaypoint("section_one","#section_one","visible",300,null,!1),createWaypoint("section_two",".start_button, #section_two","visible",300,null,!0),createWaypoint("section_three","#section_three","visible",300,null,!1),createWaypoint("section_four","#section_four","visible",0,null,!1),createWaypoint("section_five","#section_five","visible",400,null,!1),createWaypoint("section_six","#section_six","visible",250,null,!1),$(".select_mock_wrapper").on("click",function(e){$(this).toggleClass("open")}),$(document).click(function(e){$(e.target).closest(".select_mock_wrapper.open").length||$(".select_mock_wrapper").removeClass("open")}),$(".mock_dropdown li").on("click",function(){var e=$(this).text();$("span.input_left_select_copy").text(e),"select how you were injured"===$("span.input_left_select_copy").text()||($(".form_overlay_wrapper").addClass("open"),$("#input_1_6, #input_2_6, #input_3_6").val(e),$("li#field_1_6, li#field_2_6, li#field_3_6").addClass("input_has_value"))});var windowWidth=$(window).width();checkWidthhover();