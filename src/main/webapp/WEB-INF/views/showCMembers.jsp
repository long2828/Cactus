<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
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
<script type="text/javascript">

	function back() {
		
	　	 confirm("確定要刪除?");
	　	 

	}


</script>

<body>
 
<div align='center'>
<h2>會員管理</h2>
<hr>
<table border='1'>
<tr><th>帳號</th><th>Email</th><th>密碼</th><th>姓名</th><th>性別</th><th>生日</th><th>手機</th><th>修改/刪除</th></tr>
<c:forEach var='mm' items='${cactus}'>
  <tr> 	 
     <td>${mm.username}</td>
     <td>${mm.email}</td>
     <td>${mm.password}</td>
     <td>${mm.name}</td>
     <td>${mm.gender}</td>
     <td>${mm.birth}</td>
     <td>${mm.cellphone}</td>
     <td>   	
<%--      	<form action="<c:url value='/Put_C_member/${mm.username}' />" method="post"> --%>
<!--      		<input type="hidden" name="_method" value="put" /> -->
<!--      	</form> -->
      		<button id="put" onclick="location.href='http://localhost:8080/cactus/Put_C_member/${mm.username}'">修改</button>
<%-- 		<a href="<c:url value='/Delete_C_member/${mm.username}' />">修改</a> --%>
     	<form action="<c:url value='/Delete_C_member/${mm.username}' />" method="post">
     		<input type="hidden" name="_method" value="delete" />
      		<button onclick="back()">刪除</button>
<%--       		<input type="button" value="刪除" onclick="location.href='<c:url value='/C_members'  />'"> --%>
     	</form>
     	
     </td>
     
 </tr>    
</c:forEach>
</table>
<hr>
<a href="<c:url value='/'  />">回首頁</a>
<a href="<c:url value='/back'  />">回後台首頁</a>
</div>
</body>

</html>