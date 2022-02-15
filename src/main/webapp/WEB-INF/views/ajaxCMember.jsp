<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 70%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: center;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
button
{border:0;
background-color:#FF2D2D;
color:#fff;border-radius:5px;}
form{
	display:inline;
}
#put{border:0;
background-color:#2894FF;
color:#fff;border-radius:5px;}
</style>
<script>
	window.onload = function() {
										
		let dataArea = document.getElementById("dataArea");
		let xhr = new XMLHttpRequest();
		xhr.open('GET', "<c:url value='/ajax/CC_members' />");
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					dataArea.innerHTML = displayAllMembers(xhr.responseText);
				}
			}
		}
		function displayAllMembers(jsonString) {
			let obj = JSON.parse(jsonString);
			let htmlseg = "";
			htmlseg = "<table border='1'>";
			htmlseg += "<tr><th>帳號</th><th>Email</th><th>密碼</th><th>姓名</th><th>性別</th><th>生日</th><th>手機</th><th>刪除</th></tr>";

			for (let i = 0; i < obj.length; i++) {
				let objs = obj[i];
				htmlseg += "<tr>";
				htmlseg += "<td>" + objs.username + "</td>";
				htmlseg += "<td>" + objs.email + "</td>";
				htmlseg += "<td>" + objs.password + "</td>";

				htmlseg += "<td>" + objs.name + "</td>";
				htmlseg += "<td>" + objs.gender + "</td>";
				htmlseg += "<td>" + objs.birth + "</td>";
				htmlseg += "<td>" + objs.cellphone + "</td>";
				htmlseg += "<td>" + "<button id='deleteData'>刪除</button>" + "</td>"	;		
				htmlseg += "</tr>";
			}
			htmlseg += "</table>";
			return htmlseg;
		}
		
// 		var deleteData = document.getElementById("deleteData");
// 		var username = ${objs.username}
		
// 		deleteData.onclick = function(){
// 			   var result = confirm("確定刪除此筆記錄(帳號:" + objs.username + ")?");
// 			   if (result) {
// 				    var xhr2 = new XMLHttpRequest();
// 			   		xhr2.open("DELETE", "<c:url value='/Delete_C_member/' />" + username, true);
// 			   	//	xhr2.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
// 			   		xhr2.send();
// 			   		xhr2.onreadystatechange = function() {
// 								// 伺服器請求完成
// 			   		if (xhr2.readyState == 4 && (xhr2.status == 200 || xhr2.status == 204) ) {
// 			      		result = JSON.parse(xhr2.responseText);
// 			      		if (result.fail) {
// 					 		divResult.innerHTML = "<font color='red' >"
// 								+ result.fail + "</font>";
// 				  		} else if (result.success) {
// 				  			window.location.href = "http://localhost:8080/cactus/ajax/CC_members";
				  			
// 			      		}                                                             
// 					} 
				      
// 				  }
// 			   } 
// 		   }
	
	
	}
	
	
	
	
</script>


</head>
<body>
	<div id='dataArea' align='center'></div>
	<div align='center'>
		<a href="<c:url value='/'  />">回前頁</a>
	</div>
</body>

</html>