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

	var params = {};
	params["control_type"] ="select";
	params["first_item_type"]="select";
	//params["code"]="CO";
	params["code_div"]="CO";
	params["control_id"]="ddlid";
	params["type"]="code";
	LoadCommonCode($("#ssss"), params,false)
	
	
	
	var params = {};
	params["control_type"] ="radio";
	params["first_item_type"]="select";
	//params["code"]="CO";
	params["code_div"]="CO";
	params["control_id"]="radid";
	params["type"]="code";
	LoadCommonCode($("#spra"), params,false)
	
	
	var params = {};
	params["control_type"] ="check";
	params["first_item_type"]="select";
	//params["code"]="CO";
	params["code_div"]="CO";
	params["control_id"]="chid";
	params["type"]="code";
	LoadCommonCode($("#spch"), params,false)
	
	
	var params = {};
	params["control_type"] ="select";
	params["first_item_type"]="select";
	//params["code"]="CO";
	params["code_div"]="CT";
	params["use_method1"]="KOR";
	//params["code_div"]="KOR";
	params["control_id"]="ddlid2";
	params["type"]="code";
	LoadCommonCode($("#ssss1"), params,false)

});
</script>
</head>
<body>
<span id="ssss" name="ssss">

</span>


<span id="ssss1" name="ssss1">

</span>
  
<br>

<select id='ddlid2' ><option value=''>선택</option><option value='SEL'>서울(인천+김포)</option><option value='ICN'>인천</option><option value='GMP'>김포</option><option value='PUS'>부산</option><option value='TAE'>대구</option><option value='CJU'>제주</option><option value='MWX'>무안</option><option value='YNY'>양양</option><option value='CJJ'>청주</option></select>


<span id="spra" name="spra">

</span>
<br>
<span id="spch" name="spch">

</span>

<br>

</body>
</html>