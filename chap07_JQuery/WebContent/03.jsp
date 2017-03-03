<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h3>DOM 제어</h3>
1) 내용 제어 : html(), val()
<hr/>
<span id="sp">text</span> <input type="text" id="t" />
<hr/>
<button id="html">html()</button> | <button id="val">val()</button>  
<script>
	$("#html").click(function(){
		window.alert($("#sp").html());	// getter
		$("#sp").html("텍스트");		// setter
	});
	
	$("#val").click(function(){
		window.alert($("#t").val());	// getter
		$("#t").val("");				// setter
	});
</script>
<hr/>
2) 속성 제어 : attr, prop
<hr/>
<textarea rows="3" cols="30" id="sample">미리 글씨 설정하기</textarea>
<hr/>
<button id="attr">attr</button> | <button id="prop">prop</button>
<hr/>
<script>
	$("#attr").click(function(){
		// 속성값 불러오기 (getter)
		var r = $("#sample").attr("rows");
		console.log(r);
		// 속성값 설정하기 (setter)
		$("#sample").attr("cols", 50);
		
// 		console.log($("#sample").attr("disabled")); attr로는 접근 안됨
		console.log($("#sample").attr("id"));
	});
	
	
</script>