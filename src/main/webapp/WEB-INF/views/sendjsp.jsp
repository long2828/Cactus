<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align='center'>						
		<form method="get" action="<c:url value='/qq' />"
			name="myForm">
			
			
				<input type="text" placeholder="輸入內容" name="i" id="idn" required /> 
                
           										
					<input id="lg" type="submit" value="送出"/> 		
					
		</form>
				
</div>
</body>
</html>