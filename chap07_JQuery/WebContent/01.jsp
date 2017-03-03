<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h1>jQuery</h1>
자바스크립트 프로그래밍을 쉽게 구현할 수 있게 만들어둔 자바스크립트 라이브러리<br/>
자바 스크립트의 역할을 알면 쉽게 배울 수 있다.<br/>
<hr/>
jQuery를 사용하기 위해선 라이브러리 연동이 필요한데, <br/>
실제로 다운을 받아서 프로젝트에 넣어두고 쓰는 방식 vs CDN(Content Delivery Network) 방식이 있음.<br/>
<hr/>
<b>CDN 방식의 장점</b>
브라우저에서 CDN 방식으로 연동시키게 하면, 최신 jQuery가 적용되고,<br/>
대부분의 웹 어플리케이션들이 거의 CDN 연동을 해서 브라우저에 받아져있을 가능성이 큼.<br/>
따라서 로딩시간이 줄어듬<br/>
<hr/>
jQuery의 특징#<br/>
document traversal and manipulation, (돔탐색, 돔제어)<br/>
event handling, animation, (이벤트 처리, 애니메이션 효과)<br/>
and Ajax much simpler with an easy-to-use API(Ajax 처리가 단순해짐)
<hr/>
<input type="text" id="view" />
<button id="bt">버튼</button>
<script>
	// $("p") : document.getElementsByTagName("p");
	// $(".btn") : document.getElementsByClassName("btn");
	// $("#view") : document.getElementByID("view");
	console.log($("#view"));
	console.log(document.getElementById("view")); 		// Dom 객체. 위의 것과 같지 않음.
	console.log($(document.getElementById("view")));	//jQuery 객체화
	
	$("#bt").click(function(){
		window.alert("~~");
		$.ajax({
			url : "/01ajax.jsp"
		}).done(function(txt){
			console.log(txt);
			$("#bt").html(txt);
		});
	});
	
// 	document.getElementById("view").value="아아아";
// 	$("#view").value = "아아아";	//(X) 이건 안됨.
	$("#view").val("아아아");	//jQuery 함수를 써야 함
	$("#view").fadeOut(5000);
	$("#view").fadeIn(1000);
</script>