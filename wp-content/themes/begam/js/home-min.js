function createWaypoint(e,t,n,o,i,l){var c=new Waypoint({element:document.getElementById(e),handler:function(e){"down"===e?(jQuery(t).addClass(n),"function"==typeof i&&i.call()):l&&(jQuery(t).removeClass(n),"function"==typeof i&&i.call())},offset:o})}function checkWidthhover(){windowWidth<1066&&$(".case_results_single_slide").on("click",function(e){$(this).find(".hover_content").toggleClass("hover")})}createWaypoint("header_trigger","#header_trigger","visible",300,null,!0),createWaypoint("section_one","#section_one","visible",300,null,!0),createWaypoint("section_two",".start_button","visible",300,null,!0),$(".select_mock_wrapper").on("click",function(e){$(this).toggleClass("open")}),$(document).click(function(e){$(e.target).closest(".select_mock_wrapper.open").length||$(".select_mock_wrapper").removeClass("open")}),$(".mock_dropdown li").on("click",function(){var e=$(this).text();$("span.input_left_select_copy").text(e),"select how you were injured"===$("span.input_left_select_copy").text()||($(".form_overlay_wrapper").addClass("open"),$("#input_2_6").val(e),$(".form_overlay_wrapper li#field_2_6").addClass("input_has_value"))});var windowWidth=$(window).width();checkWidthhover();