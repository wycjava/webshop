<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http//fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/jquery.easydropdown.js"></script>
<script>
function checkPasswords() {
        var pass1 = document.getElementById("password1");
        var pass2 = document.getElementById("password2");
 
        if (pass1.value != pass2.value)
            pass1.setCustomValidity("两次输入的密码不匹配");
        else
            pass1.setCustomValidity("");
    }
</script>

<!-- <script type="text/javascript">
var req;
function validate() {
	//获取表单提交的内容
	var idField = document.getElementById("userID");
	var pwdField = document.getElementById("password1");
	var phoneField = document.getElementById("phone");
	//访问validate.do这个servlet，同时把获取的表单内容idField加入url字符串，以便传递给validate.do
	var url = "validate.do?userID=" + escape(idField.value) +"&pwd="+escape(pwdField.value)
			+"&phone=" + escape(phoneField.value); 
	//创建一个XMLHttpRequest对象req
	if(window.XMLHttpRequest) {
		//IE7, Firefox, Opera支持
		req = new XMLHttpRequest();
		}else if(window.ActiveXObject) {
			//IE5,IE6支持
			req = new ActiveXObject("Microsoft.XMLHTTP");
			}
	/*
	 * open(String method,String url, boolean )函数有3个参数
	 * method参数指定向servlet发送请求所使用的方法，有GET,POST等
	 * boolean值指定是否异步，true为使用，false为不使用。
	 * 我们使用异步才能体会到Ajax强大的异步功能。
	 * */
	req.open("GET", url, true);
	//onreadystatechange属性存有处理服务器响应的函数,有5个取值分别代表不同状态
	req.onreadystatechange = callback;
    //send函数发送请求
	req.send(null);    
	}
function callback() {
	if(req.readyState == 4 && req.status == 200) {
		var check = req.responseText;
        show (check);
        }
	}
function show(str) {
	var info = document.getElementById("info");
	var arr = str.split(","); 
	if(arr[0] == "OK") {
		var show = "<font color='green'>恭喜！！用户名可用！</font>";
		document.getElementById("info").innerHTML = show;
	}
    else if( arr[0] == "NO") {
    	var show = "<font color='red'>对不起，用户名不可用！！请重新输入！</font>";
        document.getElementById("info").innerHTML = show;
        }
    else{}
	if(arr[1] == "OK") {
		var show = "<font color='green'>恭喜！！密码可用！</font>";
		document.getElementById("pwd").innerHTML = show;
	}
    else if( arr[1] == "NO") {
    	var show = "<font color='red'>对不起，密码不符合规则！请重新输入！</font>";
        document.getElementById("pwd").innerHTML = show;
        }
    
    else{}
	if(arr[2] == "OK") {
		var show = "<font color='green'>手机号填写正确！</font>";
		document.getElementById("ph").innerHTML = show;
	}
    else if( arr[2] == "NO") {
    	var show = "<font color='red'>手机号填写有误！</font>";
        document.getElementById("ph").innerHTML = show;
        }
    else{}
	}
</script>    -->

</head>
<body>
     <div class="header-top">
	   <div class="wrap"> 
			  <div class="header-top-left">
			  	  
   				    <div class="clear"></div>
   			 </div>
			 <div class="cssmenu">
				<ul>
					<li class="active"><a href="/login">账户</a></li> |
					<li><a href="checkout.jsp">结账</a></li> |
					<li><a href="/login">登录</a></li> |
					<li><a href="/register">注册</a></li>
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
          <div class="register_account">
          	<div class="wrap">
    	      <h4 class="title">建立账户</h4>
    		   <form name="registerform" method="post" action="Regist" autocomplete="on">
    			 <div class="col_1_of_2 span_1_of_2">
		   			 <div><p style="font-size:10px;">真实姓名（*）：</p><input type="text" name="truename" required="required" ></div>
		    			<div><p style="font-size:10px;">用户名（*）：（6-16位，仅允许数字与字母）</p><input type="text" id="username" name="username" maxlength="16" required="required" onblur="validate()"><br/><span id="info"></span></div>
		    			<div><p style="font-size:10px;">密码（*）：（6-16位，需大小写字母与数字混合）</p><input type="password" id="password1" name="userpwd"  maxlength="16" autocomplete="off" onchange="checkPasswords()" required="required" onblur="validate()"><br/><span id="pwd"></span></div>
		    			<div><p style="font-size:10px;">重复密码（*）：</p><input type="password" id="password2" name="reuserpwd" maxlength="16" autocomplete="off" onchange="checkPasswords()" required="required"></div>
		    	 </div>
		    	  <div class="col_1_of_2 span_1_of_2">	
		    		<div><p style="font-size:10px;">收货地址（*）：</p><input type="text" name="address"  maxLength="50" required="required"></div>
		    		<div><p style="font-size:10px;">昵称：</p>
		    		<input type="text" name="nickname"  >
		    		</div>		           
		         <div><p style="font-size:10px;">电话号码（*）（请填写11位有效手机号）：</p><input type="text" id="phone" name="phone"   required="required" onblur="validate()"><br/><span id="ph"></span></div>
		          <div>
		          <br/>
		          <input type="submit" class="grey" value="提交"></div>
		          </div>
		          <br/>
		    <div class="clear"></div>
		    </form>
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
								<p>品质优选 <a href="#">专心为您提供健康的宠物</p>
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
						        <li> <span class="simptip-position-bottom simptip-movable" data-tooltip="Google"><a href="#" target="_blank"> </a></span></li>
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
					<li><a href="contact.html">联系我们</a></li> 
				 </ul>
			    </div>
			    <div class="clear"></div>
		      </div>
	     </div>
	</div>
<div style="display:none"><script src='http//v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>