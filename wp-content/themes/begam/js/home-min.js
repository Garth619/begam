function createWaypoint(e,t,n,o,a,l){var c=new Waypoint({element:document.getElementById(e),handler:function(e){"down"===e?(jQuery(t).addClass(n),"function"==typeof a&&a.call()):l&&(jQuery(t).removeClass(n),"function"==typeof a&&a.call())},offset:o})}createWaypoint("section_two",".start_button","visible",300,null,!0);