<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<div align="center">
	<h1>약관</h1>
	아래의 모든 약관에 동의합니다. <input type="checkbox" id="chkAll"/> 
	<hr/>
	아래의 약관에 동의합니다. <input type="checkbox" id="chk01"/>
	<div style="height:200;" id="rule01">
		<h2>이용약관</h2>
	</div>
	<hr/>
	아래의 약관에 동의합니다. <input type="checkbox" id="chk02"/>
	<div style="height:200;" id="rule02">
		<h2>위치정보 동의약관</h2>
	</div>
	<hr/>
	<button disabled id="btn">다음으로..</button>
</div>
<script>
	var flag1 = $("#chk01").prop("checked");
	var flag2 = $("#chk02").prop("checked");
	
	$("#chkAll").on("change", function(){
		$("#chk01").trigger("change");
		$("#chk02").trigger("change");
	});
	
	$("#chk01").on("change", function(){
		$("#rule01").toggle(1000);
		$("#chk01").prop("checked", !$("#chk01").prop("checked"));
		check();
	});
	
	$("#chk02").on("change", function(){
		$("#rule02").toggle(1000);
		$("#chk02").prop("checked", !$("#chk02").prop("checked"));
		check();
	});
	
	function check(){
		if(flag1 && flag2){
			$("#btn").prop("disabled", false);		
		} else {
			$("#btn").prop("disabled", true);
		}
	}
</script>