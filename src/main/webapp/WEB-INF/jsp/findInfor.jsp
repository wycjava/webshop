<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
  #title {
    font-family: Lobster, Monospace;
  }
  .smaller-image{
    width: 100px;
  	border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }
  #order{
  text-align: center;
  }
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>uploadInfor</title>
<link href="css/zsgcstyle.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="http://www.coding123.net/js/jquery.js"></script>
	<script type="text/javascript">
       
        function listAnimal() {
        	var searchAnimalName = $("#searchAnimalName").val();
        	
            $.ajax({
                url: '/modifyAnimalInfo/'+searchAnimalName,
                cache: false,
                dateType: 'json',
                type:'get',
                success: function (data) {
                /* 	$("#AnimalInfor").html("");
                	$("#AnimalInfor").append(
                            "<tr><td>商品编号</td><td>商品名称</td><td>性别</td><td>图片</td><td>出生日期</td><td>商品价格</td><td>操作</td></tr>
						);  */
                    $.each(data,function (num,data) {
                    	
                        $("#AnimalInfor").append(
                            "<tr><td>"+data.animalId+"</td><td>"
                            		+data.breedName+"</td><td>"
                            		+data.animalSex+'</td><td><img class="smaller-image" src="'+data.animalPicurl+'"><td>'
                            		+data.animalBirth+"</td><td>"
                            		+data.animalPrice+'</td><td><input type="button" value="删除">'+
   
                            "</td></tr>" 
						);


                    })
                    },
                error: function (xhr) {
                    alert('servlet出错\n'+xhr.status+'\n'+xhr.responseText);
                }
            });
        }
	</script>
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
<div>
<form method="post" action="findAnimalInfor">
请输入您要查询的商品名称：
<input type=text name="searchAnimalName" id="searchAnimalName"> 
<input type="button" value="查询" onclick="listAnimal()">
<br/><br/><br/>
<table id = "AnimalInfor" style="width: 100%" border="1" >
 <tr>
<td>商品编号：</td>
<td>商品名称：</td>
<td>性别：</td>
<td>宠物图片</td>
<td>出生日期：</td>
<td>商品价格：</td>
<td>操作：</td>
</tr> 

</table>


<br/>
<br/>


</form>
</div>
</body>
</html>