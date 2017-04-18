<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http//fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- dropdown -->
<script src="js/jquery.easydropdown.js"></script>
<script type="text/javascript">
function setWindowSize(){ //iframe自动本窗口高度
	try{
	var thiswin = window.parent.document.getElementById(window.name);
	if(window.document.body.scrollWidth-thiswin.offsetWidth>6){
	document.body.style.overflowX="auto";
	thiswin.height=window.document.body.scrollHeight+20;
	thiswin.width=window.document.body.scrollWidth+20;
	}else{
	document.body.style.overflowX="hidden";
	thiswin.height=window.document.body.scrollHeight;
	thiswin.width=window.document.body.scrollWidth
	}
	}catch(e){ } 
	}
</script>
</head>
<body  onLoad="setWindowSize()">
       <div class="header-top">
			<div class="wrap"> 
			  <div class="header-top-left">		  	   
   				    <div class="clear"></div>
   			 </div>
			  <div class="cssmenu">
				<ul>
					<li class="active"><a href="admininformation.jsp">管理</a></li> <!-- | -->
<!-- 					<li><a href="checkout.html">购物车</a></li>  -->
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		</div>
 			<div class="header-bottom">
	    <div class="wrap">
			<div class="header-bottom-left">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
				</div>
				<div class="menu">
	            <ul class="megamenu skyblue">
			<li class="active grid"><a href="index.jsp">主页</a></li>
			<li><a class="color4" href="#">宠物</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>选择分类</h4>
								<ul>
									<li><a href="womens.html">猫</a></li>
									<li><a href="womens.html">狗</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>狗分类</h4>
								<ul>
									<li><a href="womens.html">金毛</a></li>
									<li><a href="womens.html">松狮</a></li>
									<li><a href="womens.html">泰迪</a></li>
									
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>猫分类</h4>
								<ul>
									<li><a href="womens.html">布偶猫</a></li>
									<li><a href="womens.html">孟买猫</a></li>
									<li><a href="womens.html">加拿大无毛猫</a></li>
									<li><a href="womens.html">英格兰折耳猫</a></li>
								
								</ul>	
							</div>												
						</div>
					  </div>
					</div>
				</li>				
				
				<li><a class="color6" href="other.html">宠物周边</a></li>
			</ul>
			</div>
		</div>
	   <div class="header-bottom-right">
         <div class="search">	  
				<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
				<input type="submit" value="Subscribe" id="submit" name="submit">
				<div id="response"> </div>
		 	 </div>
	  <div class="tag-list">
		<ul class="icon1 sub-icon1 profile_img">
			<li><a class="active-icon c2" href="#"> </a>
				<ul class="sub-icon1 list">
					<li><h3>No Products</h3><a href=""></a></li>
					<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
				</ul>
			</li>
		</ul>
	  </div>
    </div>
     <div class="clear"></div>
     </div>
	</div>


</body>
</html>