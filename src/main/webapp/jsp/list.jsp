<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/resources/inc/inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function mo(){
		var lname= $("#cx").val();
		location="list?lname="+lname;
	}
	
	function toadd(){
		location="toadd";
	}
	
	function del(sid){
		location="del?sid="+sid;
	}
	
	function toupdate(sid){
		location="toupdate?sid="+sid;
	}
	
	$(function(){
		$("#selectAll").click(function(){
			$(".checkBoxList:checkbox").attr("checked",true);
		});
	});
	
	$(function(){
		$("#unSelect").click(function(){
			$(".checkBoxList:checkbox").attr("checked",false);
		});
	});
	
	function fx(){
		$(".checkBoxList").each(function(){
			$(this).prop("checked",!$(this).prop("checked"))
		})
	}
	
	
	//批量删除
	function toAllDel() {
		var ids="";
		$(".checkBoxList:checked").each(function(){
			ids+=","+$(this).val();
		});
		if(ids.length>0){
			ids=ids.substring(1);
			if(confirm("确认要删除id为"+ids+"的数据")){
				$.post('deleteAll',{ids:ids},function(obj){
					if(obj>0){
						alert("删除成功");
						location="list";
					}else{
						alert("删除失败");
					}	
				});
				}
		}else{
			alert("至少选择一条数据");
		}
	}
</script>
<body>
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<input type= "text" id="cx" value="${param.lname }">
	<button type="button" class="btn btn-primary" onclick="mo()">模糊查询</button>
	
		<tr style="color: red">
			<td></td>
			<td>品牌</td>
			<td>所属国家</td>
			<td>2013年价值(亿元)</td>
			<td>2014年价值(亿元)</td>
			<td>2015年价值(亿元)</td>
			<td>
				<button type="button" class="btn btn-primary btn-link" onclick="toadd()">添加</button>
			</td>
			
		</tr>
		<c:forEach items="${wlist }" var="w">
			<tr>
				<td><input type = "checkbox" class="checkBoxList" value="${w.sid }"></td>
				<td style="color: #789">${w.sname }</td>
				<td>${w.gou }</td>
				<td>${w.jiao13 }</td>
				<td>${w.jiao14 }</td>
				<td>${w.jiao15 }</td>
				<td>
					<button type="button" class="btn btn-danger btn-lg" onclick="del('${w.sid}')">删除</button>
					<button type="button" class="btn btn-danger btn-lg" onclick="toupdate('${w.sid}')">修改</button>
				</td>
			</tr>
		</c:forEach>
		<tr align="center">
			<td colspan="10">
				<input type = "button" id="selectAll" value="全选">
				<input type = "button" id="unSelect" value="全不选">
				<input type = "button" onclick="fx()" value="反选">
				<input type="button" value="批量删除"  onclick="toAllDel()">
			</td>
		</tr>
	</table>
	</div>
</body>
</html>