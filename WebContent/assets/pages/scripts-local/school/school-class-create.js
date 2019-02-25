/** school_class_create.jsp */


/* create class - button:back */
function backToClassList(){
	location.href = "/acp/school/class/list.html";
}


/* create class - button:save change,create */
function createClass() {
    var businessObject = getBusinessObject();
    var param = JSON.stringify(businessObject);
    
    /* validating with business rule */
    //class code
    var classCode = businessObject.classCode;
    if(isEmptyString(classCode)){
    	alert("提示: 班级编号不可为空");
    	return;
    }
    
   //class name
    var className = businessObject.className;
    if(isEmptyString(className)){
    	alert("提示: 班级名称不可为空");
    	return;
    }
    
    //class owner
    var classOwner = businessObject.classOwner;
    if(isEmptyString(classOwner)){
    	alert("提示: 指导老师不可为空");
    	return;
    }
    
    //class desc
    var classDesc = businessObject.classDesc;
    if(isEmptyString(classDesc)){
    	alert("提示: 班级描述不可为空");
    	return;
    }
    
    //max person
    var maxPerson = businessObject.maxPerson;
//    alert("maxPerson"+maxPerson);
    if(isNonNegativeInteger(maxPerson)){
    	maxPerson = parseInt(maxPerson);
    }else{
    	alert("提示: 班级最大人数不可为0");
    	return;
    }
    
    //execute saving
    $.ajax({
        type    :   "post",
        url     :	"/acp/school/class/create",
        data	:	"jsonObjString="+param,
        timeout :   30000,
        
        success:function(msg){
        	alert("提示: 新增成功!");
        	location.href="/acp/school/class/list.html";
        },
        error:function(XMLHttpRequest, textStatus){
//        	alert("错误: 新增失败，请重新尝试!");     
        	
        	if (XMLHttpRequest.readyState==4 && XMLHttpRequest.status == "200") {
        		alert("提示: 新增成功!");
        		location.href="/acp/school/class/list.html";
        	}else{
        		alert("错误: 新增失败，请重新尝试!"); 
        	}
        },            
        complete: function(XMLHttpRequest, textStatus){
            //reset to avoid duplication
        }        
    });
}


/* create class - button:reset */
function resetCreateClass(event){
	event.preventDefault();
	$("#classCode").val("");
    $("#className").val("");
    $("#classOwner").val("");
    $("#maxPerson").val(0);
    $("#classDesc").val("");
    $("#classType").val(0);
    $("#classStatus").val(1);
}



function getBusinessObject(){
	var p1 = $("#classCode").val();
    var p2 = $("#className").val();
    var p3 = $("#classOwner").val();
    var p4 = $("#maxPerson").val();
    var p5 = $("#classDesc").val();
    	p5 = p5.replace(/\n/g,"<br/>");		//solve manually return and change line
    var p6 = $("#classType").val();
    var p7 = $("#classStatus").val();
    
    var businessObject =
    {
    		classCode   :    p1,
    		className   :    p2,
    		classOwner  :    p3,
    		maxPerson   :    p4,
    		classDesc	:    p5,            
    		classType   :    p6,            
    		classStatus :    p7
    };
    
    return businessObject;
}