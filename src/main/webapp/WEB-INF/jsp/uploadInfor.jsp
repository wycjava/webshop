<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>uploadInfor</title>
<link href="css/zsgcstyle.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body style="center">

<script type="text/javascript">

	function InforCheck(){
	
		//alert(document.getElementById("animalBirth").value);
		//验证动物出生年月是否为空
		if(!document.getElementById("animalBirth").value){
			window.alert("请输入动物出生年月");
			return false;
		}else
		{
			var a =  /^(\d{4})(-)(\d{2})(-)(\d{2})$/
				if (!a.test(document.getElementById("animalBirth").value)) { 
				window.alert("出生年月日期格式不正确!");
				return false;
				} 
			
		}
		
		//验证动物价格是否为空
		if(!document.getElementById("animalPrice").value){
			
			window.alert("请输入动物价格");
			return false;
		}
		
		//Seesion["animalPicurl"]=document.getElementById("animalPicurl").
		return true;
		
		
	}
	}

</script>
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
	
<br/>	
<br/>	
<br/>	
<br/>	
	
	
	
<div style="width:100%;margin:0px auto">
<form  name="animalform" enctype="multipart/form-data" method="post" action="UploadAnimalInfor" onsubmit="return InforCheck()" >
	<table height="200px" border="2" bgcolor="white" cellspacing="0" cellpadding="30px" align="center" style="margin:0px auto;">
		<tbody>
		<tr>
		<td>动物种类：</td>
		<td>
		<select id="breedName" name="breedName">
		<option value="哈士奇">哈士奇</option>
		<option value="金毛">金毛</option>
		<option value="吉娃娃">吉娃娃</option>
		<option value="泰迪">泰迪</option>
		<option value="松狮">松狮</option>
		</select>
		</td>
		</tr>
		
		<tr>
		<td>动物性别：</td>
		<td>
		<select id="animalSex" name="animalSex">
		<option value="雄">雄</option>
		<option value="雌">雌</option>
		</select>
		</td>
		</tr>
		
		<tr>
		<td>出生年月：</td>
		<td>
		<input type="text" id="animalBirth" name="animalBirth">
		</td>
		</tr>
		
		<tr>
		<td>商品价格：</td>
		<td>
			<input type="text" name="animalPrice" id="animalPrice">
		</td>
		</tr>
		
		<tr>
		<td>备注：</td>
		<td>
		<input type="text" id="animalDescr" name="animalDescr">
		</td>
		</tr>

		<tr>
		<td>上传图片：</td>
		<td>
		<input type="file" id="animalPicurl" name="animalPicurl">
		</td>
		</tr>

		<tr>
		<td colspan="2">
		<input type="submit" name="submit" value="上传商品信息">
		</td>
		</tr>
		
		</tbody>
	</table>
</form>
</div>
<br/>
<br/>
<%@include file="foot.html" %>
</body>
</html>