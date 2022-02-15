<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<title>Insert title here</title>
</head>
<style>
fieldset {
	margin: 100px;
	border-radius: 20px;
}

legend {
	font-size: 30px;
}
a{

text-decoration:none;
font-size:28px;
}
</style>
<body>

<div align="center">
<fieldset style='width: 30% ' >
				<legend style="font-family:sans-serif;"> <i class="fa fa-align-right" style="color:	#00A600; "></i> Cactus </legend>
<h1>${sessionScope.cactusBean.getUsername()},驗證成功</h1>
<a href="<c:url value='/homeLoginPage' />">登入</a>
</fieldset>
</div>
</body>
</html>