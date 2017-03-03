<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h1>이벤트 및 애니메이션 이펙트</h1>
<hr/>
<div id="eff" style="height:300">
	<h2>약관 설명</h2>
	이런 저런 말들 말들
</div>
<c:forEach var="i" begin="1" end="3">
	<button id="bt${i }">버튼들</button>
</c:forEach>
<script>
	$("#bt1").click(function(){
// 		window.alert("클릭");
// 		$("#eff").hide(1000);
// 		$("#eff").fadeOut(1000);
		$("#eff").slideDown(1000);
	});
	
	$("#bt2").on("click", function(){
// 		$("#eff").show(1000);
// 		$("#eff").fadeIn(1000);
		$("#eff").slideUp(1000);
// 		window.alert("["+$(this).html() + "]");
	});
	
	$("#bt3").click(function(){
		// bt1의 클릭이벤트 발생
		$("#bt1").trigger("click");	
	});
	
</script>
<hr/>
input type="file" 모양이 안 이쁨
<input type="file" style="display:none" id="f"/>
<button id="add" class="btn">파일 추가</button><span id="fname"></span>
<script>
	$("#add").on("click", function(){
		$("#f").trigger("click");
	});
	
	$("#f").on("change", function(){
		window.alert($("#f").val());
		$("#fname").html($("#f").val());
	});
	
</script>
<hr/>
자주 처리하는 이벤트 keyup, click, change, blur, focus <br/>
