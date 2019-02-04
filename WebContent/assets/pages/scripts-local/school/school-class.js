/**
 * Package:	content
 * Module:  event-news system
 */

/* event news - global variables and functions*/
function getBusinessObject(){	
    var p1 = $("#globalId").val();
    var p2 = $("#eventUUID").val();        
    var p3 = $("#title").val();
    var p4 = $("#author").val();
    var p5 = $("#postDate").val();
    var p6 = $("#viewNum").val();
    var p7 = $("#descShort").val();
    	p7 = p7.replace(/\n/g,"<br/>");		//solve manually return and change line
    var p8 = $("#descLong").val();
    	p8 = p8.replace(/\n/g,"<br/>");		//solve manually return and change line
    var p9 = $("#eventClass").val();
    var p10 = $("#eventStatus").val();
    
    var businessObject =
    {
    		globalId    :    p1,
    		eventUUID   :    p2,
    		title    	:    p3,
    		author    	:    p4,
    		postDate	:    p5,            
    		viewNum    	:    p6,            
    		descShort   :    p7,
    		descLong	:    p8,
    		eventClass  :    p9,
    		eventStatus	:    p10
    };
    
    return businessObject;
}
