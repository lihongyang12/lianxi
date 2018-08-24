<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/resources/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login" method="post">
		<table>
			<tr>
				<td>
					账号:<input type="text" name="uname"> 
				</td>
			</tr>
			
			<tr>
				<td>
					密码:<input type="text" name="password"> 
				</td>
			</tr>
			
			<tr>
				<td>
					<input type= "submit" value="登录">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>