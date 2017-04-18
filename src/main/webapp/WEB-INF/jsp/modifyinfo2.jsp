<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/zsgcstyle.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body style="center">
<%@include file="title2.jsp" %>
	<div>
<p style="font-size:20px;text-align:center">欢迎进入商品管理模块：</p>
<br/>
</div>
<!-- 增删改查 -->
    <div class="page">
	<section class="demo">
		<nav class="nav">
			<ul>
				<li>
					<a href="uploadInfor">
						<span>
							添加
						</span>
					</a>
				</li>
				<li>
					<a href="modifyInfo">
						<span>
							修改
						</span>
					</a>
				</li>
				<li>
					<a href="findInfor ">
						<span>
							查询
						</span>
					</a>
				</li>
			</ul>
		</nav>
	</section>
</div>
	<form action="ModifyInfo" method="post">
	请选择需要修改的信息：
	<select name="modifyInfo" name="修改信息" >
	<option value="cName">名称</option>
	<option value="aSex">性别</option>
	<option value="aBirth">出生日期</option>
	<option value="anormalPrice">价格</option>

	</select>
	<input type="text" name="modifytext"> 
	<input type="submit" value="确认修改">
</form>
</body>
</html>