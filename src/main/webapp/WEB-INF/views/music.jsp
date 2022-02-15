<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

#ccc{
	margin:120px 200px;
	color:black;
}
</style>
<body>
	<div align='center' id="ccc">
		<h2>音樂</h2>
		 <h5>Hello,${sessionScope.cactusBean.getName()}</h5>
		<hr>
		<table border='1'>
		<tr><th>編號ID</th><th>影片類型</th><th>影片名稱</th><th>影片描述</th><th>價格</th></tr>
		<c:forEach var='mm' items='${cactusCourse}'>
  	<tr> 	 
     <td>${mm.courseId}</td>
     <td>${mm.course_type}</td>
     <td>${mm.courseName}</td>
     <td>${mm.courseDescription}</td>
<%--      <td>${mm.launched]}</td> --%>
     <td>${mm.price}</td>
     
       </tr>    
</c:forEach>
</table>	
</div>
</body>
</html>

