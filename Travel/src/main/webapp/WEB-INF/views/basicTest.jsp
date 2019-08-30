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
	
	
	Ajax("CT", function (pResult){
		$("#ssss");
		console.log(pResult);
	}, false);
	
	
	
	console.log($("#ssss"));
	
	LoadCommonCode($("#ssss"), null)
	
	 //Common.LoadCommonCode($("#spGroupCode"), params, false, function (pResult) {
    //    $("select[id$=ddlGroupCode]").prop("disabled", true);
    //});
});
</script>
</head>
<body>
<select id="selCountry" name="ssss">

</select> 



</body>
</html>