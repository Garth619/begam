function createWaypoint(e,n,t,o,a,l){var i=new Waypoint({element:document.getElementById(e),handler:function(e){"down"===e?(jQuery(n).addClass(t),"function"==typeof a&&a.call()):l&&(jQuery(n).removeClass(t),"function"==typeof a&&a.call())},offset:o})}createWaypoint("not_found_trigger","#not_found_trigger","visible",300,null,!0);