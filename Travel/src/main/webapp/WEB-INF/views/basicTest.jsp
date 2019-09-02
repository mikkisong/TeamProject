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
	//alert("aaa");
	
	
// 	Ajax("CT", function (pResult){
// 		$("#ssss");
// 		console.log(pResult);
// 	}, false);
	
	
	
	//console.log($("#ssss"));
	
	var params = {};
	params["control_type"] ="select";
	params["first_item_type"]="select";
	//params["code"]="CO";
	params["code_div"]="CO";
	params["control_id"]="ddlid";
	params["type"]="code";
	LoadCommonCode($("#ssss"), params,false)
	
	console.log("로드이후");
	console.log($("#ssss"));
	
	 //Common.LoadCommonCode($("#spGroupCode"), params, false, function (pResult) {
    //    $("select[id$=ddlGroupCode]").prop("disabled", true);
    //});
});
</script>
</head>
<body>
<span id="ssss" name="ssss">

</span> 



</body>
</html>