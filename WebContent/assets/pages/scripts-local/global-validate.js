/** global-validate.js */
/** unified validation API in JavaScript  */


function isNonNegativeInteger(value){
//	var reg = new RegExp("^[0-9]*$");
	var reg = new RegExp("[[1−9]+[0−9]*]*");
    if(reg.test(value)){
    	return true;
    }else{
    	alert("WARNING: Not a Non-negative integer" + " @global-validate.js");
    	//alert("INFO: A Non-negative integer detected");
    	return false;
    }
}

function isEmptyString(value){
	if(value!=null){
		if (value.replace(/(^\s*)|(\s*$)/g, "").length !=0){
		    //alert('INFO: A normal string, not empty' + " @global-validate.js");
		    return false;
		}else{
			//alert('WARNING: An empty string' + " @global-validate.js");
			return true;
		}
	}else{
		return true;
	}
}

function isNullOrUndefined(value){
	if(!value){
		alert('WARNING: Null or undefined value' + " @global-validate.js");
	}
}
