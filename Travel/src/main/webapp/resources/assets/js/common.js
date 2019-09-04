////  CommonCode - Start  
var LoadCommonCode = function (pTargetControl, pParams, pAsync, pCallBackFunction) {
//	console.log("LoadCommonCode");
//	console.log(pTargetControl);
//	console.log(pParams);
//	console.log(JSON.stringify(pParams));
	
    if (pTargetControl != null) {
        ClearCommonCode(pTargetControl);
    }
    if (pAsync == null) {
        pAsync = true;
    }
    $.ajax({
        method: 'POST'
        //, url: "/Ajax/AjaxCommonCode.aspx"
    	, url: "ajaxCodeProc"
        , data: JSON.stringify(pParams)
        , contentType: 'application/json; charset=utf-8'
        , dataType: 'json'
    	//, dataType: 'text'
        , async: pAsync
        , success: function (res) {
            ////if (console) //console.log("RESULT - " + JSON.stringify(res));
        	//console.log($(pTargetControl));
        	//console.log(res);
        	//console.log("res : " + res.data);
        	
            if (pTargetControl != null) {
                $(pTargetControl).empty();
                $(pTargetControl).append(res.data);
            } else {

            }
            if (pCallBackFunction) {
                pCallBackFunction(res.data);
            	//pCallBackFunction(res);
            } else {

            }
        }
        , error: function (request, status, error) {
        }
    });

}

var ClearCommonCode = function (pTargetControl) {
    $(pTargetControl).empty();
}




var Ajax = function (pParams, pCallBackFunction, pAsync) {
	//if (console) console.log("Ajax ACT - " + JSON.stringify(pParams));
	console.log("bbbbb");

	if (pParams == null) return;
	if (pAsync) {            
	    pAsync = pAsync;
	} else {
	    if (pAsync == false) {
	        pAsync = false;
	    } else {
	        pAsync = true;
	    }
	}
	//pParams["DB_TYPE"] = 0;
	$.ajax({
	    type: 'POST'
	        , url: "ajaxProc"
	        , data: JSON.stringify(pParams)
	        , contentType: 'application/json; charset=utf-8'
	        //, dataType: 'json'
        	, dataType: 'text'
	        , async: pAsync
	        , success: function (res) {
	        	console.log("res" + res);
	            if (pCallBackFunction != null) {
	                if (res) {
	                    pCallBackFunction(res);
	                }                        
	            }
	            //HideLoading();
	        }
	        , error: function (request, status, error) {
	        	console.log("error" + error);
            }
	    });
}
