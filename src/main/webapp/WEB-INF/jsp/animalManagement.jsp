<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品管理</title>
<link href="css/zsgcstyle.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
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
					<a href="/uploadInfor">
						<span>
							添加
						</span>
					</a>
				</li>
				<li>
					<a href="/modifyInfo">
						<span>
							修改
						</span>
					</a>
				</li>
				<li>
					<a href="/findInfor ">
						<span>
							查询
						</span>
					</a>
				</li>
			</ul>
		</nav>
	</section>
</div>



</body>
</html>