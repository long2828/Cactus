<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

<link rel='stylesheet' href='${pageContext.request.contextPath}/css/style-starterBack.css' /> 
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

#ccc{
	margin:120px 200px;
	color:black;
}
</style>
<body >

    <div align='center' id="ccc">
<h2>購物車測試</h2>
<hr>
<table border='1'>
<tr><th>CartId</th><th>courseId</th><th>userId</th><th>刪除</th></tr>
<c:forEach var='mm' items='${cactus}'>
  <tr> 	
  	 <td>${mm.getCartId()}</td>
     <td>${mm.getCourseBean().getCourseId()}</td>
     <td>${mm.getCactusBean().getUserId()}</td>
     
     <td>   	
<%--      	<form action="<c:url value='/Put_C_member/${mm.username}' />" method="post"> --%>
<!--      		<input type="hidden" name="_method" value="put" /> -->
<!--      	</form> -->
<%--       		<button id="put" onclick="location.href='http://localhost:8080/cactus/Put_C_member/${mm.username}'">修改</button> --%>
<%-- 		<a href="<c:url value='/Delete_C_member/${mm.username}' />">修改</a> --%>
		
     	<form action="<c:url value='/delete/${mm.getCartId()}'/>" method="post">
     		<input type="hidden" name="_method" value="delete"/>
      		<button onclick="back()">刪除</button>
<%--       		<input type="button" value="刪除" onclick="location.href='<c:url value='/C_members'  />'"> --%>
     	</form>
     	
     </td>
     
 </tr>    
</c:forEach>
</table>
 </div>
