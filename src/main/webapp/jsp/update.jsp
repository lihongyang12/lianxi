<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/resources/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body >
	<form action="update" method="post" >
		<table class="table table-striped table-bordered table-hover" >
			<tr align="center">
				<td>
					品牌:${watch.sname}
				</td>
			</tr>
			
			<tr align="center">
				<td>
					所属国家:${watch.gou } 
				</td>
			</tr>
			
			<tr align="center">
				<td>
					2013年品牌价值:${watch.jiao13 }亿元
				</td>
			</tr>
			
			<tr align="center">
				<td>
					2014年品牌价值:${watch.jiao14 } 亿元
				</td>
			</tr>
			
			<tr align="center">
				<td>
					2015年品牌价值:${watch.jiao15 } 亿元
				</td>
			</tr>
			
			<tr>
				<td></td>
			</tr>
			
			<tr align="center">
				<td>
					
					2013-2015年品牌价值提升:${watch.jiao15-watch.jiao13} 亿元
				</td>
			</tr>
			
			<tr align="center">
				<td>
					2013-2015年品牌价值年均增长率:${(watch.jiao15-watch.jiao13)/watch.jiao13/2*100}% 亿元
				</td>
			</tr>
			<tr align="center">
				<td>
					<input type = "submit" value="提交">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>