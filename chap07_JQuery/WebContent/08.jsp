<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<div id="result">
</div>
<button id="btn">가져와!!</button>

<script>
	$("#btn").on("click", function(){
		$.ajax({
			"url" : "/08ajax.jsp",
			"method" : "post",
			"data" : {
				"q" : "query",
				"v" : "value"
			}
		}).done(function(rst){			
			$("#result").append("ID : " + rst.id+"<br/>");
			$("#result").append("PASS : " + rst.pass+"<br/>");
			$("#result").append("AGE : " + rst.age+"<br/>alive :");
			$("#result").append(rst.alive ? "생존O" : "생존X");
			$("#result").append("<br/>hobby : ");
			$("#result").append(rst.hobby[0] + " ");
			$("#result").append(rst.hobby[1] + "<br/>");
// 			var size = rst.hobby.length;
// 			for(int i = 0 ; i<rst.hobby.length; i++){
// 				$("#result").append(rst.hobby[i] + " ");
// 			}
		});
	});
	
	// jquery ajax는 contentype에 따라서 자동으로 바뀜
</script>