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
	<form action="add" method="post">
		<table class="table table-striped table-bordered table-hover">
			<tr>
				<td>
					品牌:<input type="text" name="sname"> 
				</td>
			</tr>
			
			<tr>
				<td>
					所属国家:<input type="text" name="gou"> 
				</td>
			</tr>
			
			<tr>
				<td>
					2013年品牌价值:<input type="text" name="jiao13"> 亿元
				</td>
			</tr>
			
			<tr>
				<td>
					2014年品牌价值:<input type="text" name="jiao14"> 亿元
				</td>
			</tr>
			
			<tr>
				<td>
					2015年品牌价值:<input type="text" name="jiao15"> 亿元
				</td>
			</tr>
			
			<tr>
				<td>
					<input type = "submit" value="提交">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>