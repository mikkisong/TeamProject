<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./resources/jquery-3.4.1.js"></script>
<script src="./resources/assets/js/common.js"></script>
<script type="text/javascript">

$(document).ready(function() {

// 	var params = {};
// 	params["control_type"] ="select";
// 	params["first_item_type"]="select";
// 	//params["code"]="CO";
// 	params["code_div"]="CO";
// 	params["control_id"]="ddlid";
// 	params["type"]="code";
// 	LoadCommonCode($("#ssss"), params,false)
	
	
	
// 	var params = {};
// 	params["control_type"] ="radio";
// 	params["first_item_type"]="select";
// 	//params["code"]="CO";
// 	params["code_div"]="CO";
// 	params["control_id"]="radid";
// 	params["type"]="code";
// 	LoadCommonCode($("#spra"), params,false)
	
	
// 	var params = {};
// 	params["control_type"] ="check";
// 	params["first_item_type"]="select";
// 	//params["code"]="CO";
// 	params["code_div"]="CO";
// 	params["control_id"]="chid";
// 	params["type"]="code";
// 	LoadCommonCode($("#spch"), params,false)
	
	
 	
 	
 	var Gender = function() {
 		var params = {};
 	 	params["control_type"] ="radio";  //radio ,select ,select2, check
 	 	params["first_item_type"]="select"; // select:선택 , all:전체
 	 	params["code_div"]="01"; // 남여구분
 	 	params["control_id"]="radGender";
 	 	params["type"]="code";
 	 	LoadCommonCode($("#spGender"), params,false)	
	};
	var MobileCarrier = function() {
 		var params = {};
 	 	params["control_type"] ="select"; //radio ,select ,select2, check
 	 	params["first_item_type"]="select"; // select:선택 , all:전체
 	 	params["code_div"]="03"; // 통신사
 	 	params["control_id"]="sel​MobileCarrier";
 	 	params["type"]="code";
 	 	LoadCommonCode($("#sp​MobileCarrier"), params,false)	
	};
	var Mobile1 = function() {
 		var params = {};
 	 	params["control_type"] ="select"; //radio ,select ,select2, check
 	 	params["first_item_type"]="select"; // select:선택 , all:전체
 	 	params["code_div"]="02"; // 011
 	 	params["control_id"]="sel​Mobile1";
 	 	params["type"]="code";
 	 	LoadCommonCode($("#sp​Mobile1"), params,false)	
	};
	
	

	var City = function () {
        var params = JSON.parse("{}");
        params["control_type"] ="select2"; //radio ,select ,select2, check
     	params["first_item_type"]="select"; // select:선택 , all:전체
     	params["code_div"]="CT";
     	params["use_method1"]=$("select[id$=selCountry]").val();
        LoadCommonCode(null, params, false, function (pResult) {
        	var data = jQuery.parseJSON(pResult);
             //셀렉트 박스 리셋 필요하 따라 리셋을 않해도 됩
             $("select[id$=selCity] option").remove();
              //console.log(data);
             //데이터 바인딩
             $("select[id$=selCity]").append("<option value=''>선택</option>");
             for (var index in data.Table) {
                 $("select[id$=selCity]").append("<option value='" + data.Table[index]["VALUE"] + "'>" + data.Table[index]["TEXT"] + "</option>");
             }
        }, false);
    };

	//국가 변경
    $("select[id$=selCountry]").change(function () {
    	if($("select[id$=selCountry]").val()!=""){
    		//도시 호출
        	City();	
    	}
    	else{
    		$("select[id$=selCity]").val("");
    	}
    });
	//남여 구분 세팅
    Gender();
	//통신사 세팅
    MobileCarrier();
	// 
    Mobile1();
});
</script>
</head>
<body>
(컨트롤단에서 세팅 이후  로드)<br>
국가 : ${selCountry}
도시 :(국가 코드가 바뀌면 리로드) ${selCity}<br>
성별 구분 : ${radGender1}
  
<br>
<br>

(제이쿼리 사용시)<br>
성별 구분
<span id="spGender" name="spGender">
</span>
<br>
통신사
<span id="sp​MobileCarrier" name="sp​MobileCarrier">
</span>

<span id="sp​Mobile1" name="sp​Mobile1">
</span>


<br>

</body>
</html>