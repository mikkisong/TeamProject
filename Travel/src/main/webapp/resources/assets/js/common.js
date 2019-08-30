




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
