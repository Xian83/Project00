<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h2>jQuery DOM Traversing</h2>
태그나, 클래스이름, 아이디로 접근 가능
<hr/>
<c:forTokens var="tk" items="가위,바위,보" delims=",">
	<button>${tk }</button>
</c:forTokens>
<br/>
<input type="text" readonly value="아무말이나" id="t"/>
<hr/>
<c:forEach var="i" begin="1" end="10">
	<input type="checkbox" class="chk" />목록 .${i }<br/>
</c:forEach>
<hr/>
<button id="bt">클릭</button>
<script>
	// 태그명 혹은 클래스명으로 찾으면, 여러개가 나옴.
	$("button").each(function(){
		console.log(this);
// 		this.innerHTML = "안녕";
// 		$(this).html("음...");	//this를 jquery 객체로 바꿈.
		this.disabled = true;
	});
	
// 	$(".chk").each(function(){
// // 		this.checked = true;
// 		$(this).prop("checked", true);
// 	});
	
	// prop으로 제어되는 효과
	// checked, disabled, selected, readonly
	$("#bt").prop("disabled", false);
	$("#t").prop("readonly", false);
	
	$("#bt").click(function(){
		$(".chk").each(function(){
			$(this).prop("checked", !$(this).prop("checked"));			
		});
	});
	
</script>