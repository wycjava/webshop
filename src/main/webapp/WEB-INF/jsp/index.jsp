<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!--start slider -->
    <link rel="stylesheet" href="css/fwslider.css" media="all">
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/css3-mediaqueries.js"></script>
    <script src="js/fwslider.js"></script>
<!--end slider -->
	<script src="js/jquery.easydropdown.js"></script>
	<script type="text/javascript" src="http://www.coding123.net/js/jquery.js"></script>
	<script type="text/javascript">
        $(function () {
            $.ajax({
                url: 'showaction',
                cache: false,
                dateType: 'json',
                success: function (data) {
                    $.each(data,function (num,data) {
                        $("#animal").append(
                            "<div class=\"top-box\">"+
							"<div class=\"col_1_of_3 span_1_of_3\">"+
							"<a href=\"single?animalId="+data.animalId+"\">"+
							"<div class=\"inner_content clearfix\">"+
							"<div class=\"product_image\">"+
							"<img src="+data.animalPicurl+"/>"+
							"</div>"+
                            "<div class=\"price\">"+
							"<div class=\"cart-left\">"+
							"<p class=\"title\">"+data.breedName+
							"</p>"+
							"<div class=\"price1\">"+
							"<span class=\"actual\">"+
							"￥"+data.animalPrice+"</span></div></div>"+
							"<div class=\"cart-right\"> </div>"+
							"<div class=\"clear\"></div></div></div></a></div>"
						);

                    })
                    },
                error: function (xhr) {
                    alert('servlet出错\n'+xhr.status+'\n'+xhr.responseText);
                }
            });
        });
	</script>
</head>
<body>

     <div class="header-top">
	   <div class="wrap"> 
			  <div class="header-top-left">
   				    <div class="clear"></div>
   			 </div>
   			 
   			   
   			   
   			   
			 <div class="cssmenu">
				<ul>
				    <li>
				    <% String username = (String) session.getAttribute("unickname"); %>
				    <% if( username==null ) 
				    {
				    	out.write("欢迎您,请登录！");
				    	out.write("<li><a href=\"login\">登录</a></li> |");
				    } 
				     else 
				     {
				    	 out.write("<li> 欢迎！"+username+"！"+"</li>"+"<li><a href=\"Loginout\">注销</a></li>");
				    	 if(username.equals("管理员"))
				    	 {
				    		 out.write("<li class=\"active\"><a href=\"admininformation.jsp\">账户</a></li> |");
				    	 }
				    	 else
				    	 {
				    		 out.write("<li class=\"active\"><a href=\"information.jsp\">账户</a></li> |");

				    	 }
				    	 }
				     %>
				    </li>
				    <!-- <li class="active"><a href="order.jsp">账户</a></li> | -->
				    <li><a href="register">注册</a></li> |
					<li><a href="checkout.jsp">结账</a></li> 
				<!-- 	<li><a href="uploadInfor.jsp">上传商品信息</a></li>|
					<li><a href="modify.jsp">删除商品信息</a></li>|   -->
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
			<li class="active grid"><a href="/">主页</a></li>
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
								<h4>猫分类</h4>
								<ul>
									<li><a href="womens.html">布偶猫</a></li>
									<li><a href="womens.html">孟买猫</a></li>
									<li><a href="womens.html">加拿大无毛猫</a></li>
									<li><a href="womens.html">英格兰折耳猫</a></li>
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
  <!-- start slider -->
    <div id="fwslider">
        <div class="slider_container">
            <div class="slide"> 
                <!-- Slide image -->
                    <img src="images/banner.jpg" alt=""/>
                <!-- /Slide image -->
                <!-- Texts container -->
                <div class="slide_content">
                    <div class="slide_content_wrap">
                        <!-- Text title -->
                        <h4 class="title">让您的宠物充满活力</h4>
                        <!-- /Text title -->
                        
                        <!-- Text description -->
                        <p class="description">用心做到最好</p>
                        <!-- /Text description -->
                    </div>
                </div>
                 <!-- /Texts container -->
            </div>
            <!-- /Duplicate to create more slides -->
            <div class="slide">
                <img src="images/banner1.jpg" alt=""/>
                <div class="slide_content">
                    <div class="slide_content_wrap">
                        <h4 class="title">让您的宠物不再寂寞 </h4>
                        <p class="description">温暖而又舒适的选择</p>
                    </div>
                </div>
            </div>
            <!--/slide -->
        </div>
        <div class="timers"></div>
        <div class="slidePrev"><span></span></div>
        <div class="slideNext"><span></span></div>
    </div>
    
    
    
    
    
    
    <!--/slider -->
<div class="main">
	<div class="wrap">
		<div class="section group">
		  <div class="cont span_2_of_3">
		  
		  	<h2 class="head">宠物</h2>
				<div class="top-box" id="animal">
		
			
		

				</div>
				 <div class="clear"></div>
			</div>		 	
			
			
			<div class="cont span_2_of_3"> 
	        <h2 class="head">宠物周边</h2>	
		    <div class="section group" id="zhoubian">
		
		
		
				<div class="clear"></div>
			</div>	
			</div>						 			    
		  </div>  
		
	   <div class="clear"></div>
	</div>
	</div>
	</div>
   <div class="footer">
		<div class="footer-top">
			<div class="wrap">
			  <div class="section group example">
				<div class="col_1_of_2 span_1_of_2">
					<ul class="f-list">
					  <li><img src="images/2.png"><span class="f-text">全场满5888元包邮</span><div class="clear"></div></li>
					</ul>
				</div>
				<div class="col_1_of_2 span_1_of_2">
					<ul class="f-list">
					  <li><img src="images/3.png"><span class="f-text">联系我们 0571-89999999 </span><div class="clear"></div></li>
					</ul>
				</div>
				<div class="clear"></div>
		      </div>
			</div>
		</div>
		<div class="footer-middle">
			<div class="wrap">
			 <div class="section group example">
			  <div class="col_1_of_f_1 span_1_of_f_1">
				 <div class="section group example">
				   <div class="col_1_of_f_2 span_1_of_f_2">
				      <h3>QQ</h3>
						<script>(function(d, s, id) {
						  var js, fjs = d.getElementsByTagName(s)[0];
						  if (d.getElementById(id)) return;
						  js = d.createElement(s); js.id = id;
						  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
						  fjs.parentNode.insertBefore(js, fjs);
						}(document, 'script', 'facebook-jssdk'));</script>
						<div class="like_box">	
							<div class="fb-like-box" data-href="http//www.zjf88.com/" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>
						</div>
 				  </div>
				  <div class="col_1_of_f_2 span_1_of_f_2">
						<h3>微博公众号</h3>
				       <div class="recent-tweet">
							<div class="recent-tweet-icon">
								<span> </span>
							</div>
							<div class="recent-tweet-info">
								<p>品质优选 <a href="#">专心为您提供健康的宠物</a></p>
							</div>
							<div class="clear"> </div>
					   </div>
					   <div class="recent-tweet">
							<div class="recent-tweet-icon">
								<span> </span>
							</div>
							<div class="recent-tweet-info">
								<p>格调生活 <a href="#">一生中必养的宠物</a> 让您的生活不再孤单</p>
							</div>
							<div class="clear"> </div>
					  </div>
				</div>
				<div class="clear"></div>
		      </div>
 			 </div>
			 <div class="col_1_of_f_1 span_1_of_f_1">
			   <div class="section group example">
				 <div class="col_1_of_f_2 span_1_of_f_2">
				    <h3>更多信息</h3>
						<ul class="f-list1">
						    <li><a href="#">支持30天无忧退货 </a></li>
				            <li><a href="#">共有1000余种宠物供您选择 </a></li>
				            <li><a href="#">宠物同城直达，给您最放心的服务</a></li>
				             <li><a href="#">全场满5888元包邮 </a></li>
				            <li><a href="#">宠物运输途中出现任何问题包赔 </a></li>
				            <li><a href="#">我们保证出售的每一只宠物都是活泼健康的</a></li>
			         	</ul>
 				 </div>
				 <div class="col_1_of_f_2 span_1_of_f_2">
				   <h3>联系我们</h3>
						<div class="company_address">
					                <p>浙江省，杭州市,江干区</p>
							   		<p>310018</p>
							   		<p>中国杭州</p>
					   		<p>Phone:(0571) 88888888</p>
					   		<p>Fax: (000) 000 00 00 0</p>
					 	 	<p>Email: <span>316553002@qq.com</span></p>
					   		
					   </div>
					   <div class="social-media">
						     <ul>
						        <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Google"><a href="#" target="_blank"> </a></span></li>
						        <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Linked in"><a href="#" target="_blank"> </a> </span></li>
						        <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Rss"><a href="#" target="_blank"> </a></span></li>
						        <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Facebook"><a href="#" target="_blank"> </a></span></li>
						    </ul>
					   </div>
				</div>
				<div class="clear"></div>
		    </div>
		   </div>
		  <div class="clear"></div>
		    </div>
		  </div>
		</div>
		<div class="footer-bottom">
			<div class="wrap">
	             <div class="copy">
			        
		         </div>
				<div class="f-list2">
				 <ul>
					<li class="active"><a href="about.html">关于我们</a></li> |
					<li><a href="delivery.html">退货 & 换货</a></li> |
					<li><a href="delivery.html">售后服务</a></li> |
					<li><a href="contact.html">联系我们</a></li> |
					<li><a href="adminlogin.html">管理员登录</a></li> 
				 </ul>
			    </div>
			    <div class="clear"></div>
		      </div>
	     </div>
	</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>