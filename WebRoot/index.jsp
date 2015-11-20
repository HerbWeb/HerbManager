<%-- 
    Document   : bookSearch
    Created on : 2013-7-18, 10:05:49
    Author     : sys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>中国药用植物资源数据库管理系统</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/style3.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
    </head>
    <body>
       <div class="top"></div>
<div id="header">
	<div class="logo">中国药用植物资源数据库管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href="">admin</a></li>
			<li><a href="">修改密码</a></li>
			<li><a href="">设置</a></li>
			<li><a href="login.html">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>系统公告</h4>
          <div class="list-item none" >
            <a href='' >系统公告1</a>
            <a href=''>系统公告2</a>
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span>用户管理</h4>
          <div class="list-item none">
            <a href='userI.jsp' target ="showframe">查看用户</a>
            <a href=''>权限分配</a>        
           </div>
        </li>
        <li>
          <h4 class="M3"><span></span>基础数据</h4>
          <div class="list-item none">
            <a href=''>基础1</a>
            <a href=''>基础2</a>
            <a href=''>基础3</a>
          </div>
        </li>
				<li>
          <h4 class="M4"><span></span>分类信息</h4>
          <div class="list-item none">
            <a href=''>分类信息1</a>
            <a href=''>分类信息2</a>
            <a href=''>分类信息3</a>
          </div>
        </li>
				<li>
          <h4 class="M5"><span></span>高级检索</h4>
          <div class="list-item none">
            <a href=''>高级检索1</a>
            <a href=''>高级检索2</a>
            <a href=''>高级检索3</a>
          </div>
        </li>
				<li>
          <h4  class="M6"><span></span>评论管理</h4>
          <div class="list-item none">
            <a href=''>评论管理1</a>
            <a href=''>评论管理2</a>
            <a href=''>评论管理3</a>
          </div>
        </li>
			<!-- 	<li>
          <h4  class="M7"><span></span>奖励管理</h4>
          <div class="list-item none">
            <a href=''>奖励管理1</a>
            <a href=''>奖励管理2</a>
            <a href=''>奖励管理3</a>
          </div> -->
       <!--  </li>
				<li>
          <h4   class="M8"><span></span>字典维护</h4>
          <div class="list-item none">
            <a href=''>字典维护1</a>
            <a href=''>字典维护2</a>
   
          </div>
        </li> -->
			<!-- 	<li>
          <h4  class="M9"><span></span>内容管理</h4>
          <div class="list-item none">
            <a href=''>内容管理1</a>
            <a href=''>内容管理2</a>
            <a href=''>内容管理3</a>
          </div>
        </li> -->
				<li>
          <h4   class="M10"><span></span>系统管理</h4>
          <div class="list-item none">
            <a href=''>系统管理1</a>
            <a href=''>系统管理2</a>
            <a href=''>系统管理3</a>
          </div>
        </li>
  </ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="images/home/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">系统公告</a></li>
								<li>></li>
								<li><a href="#">最新公告</a></li>
						</ul>
			</div>
			<div class="main">
				<IFRAME id="ifms" name="showframe" frameborder=0 marginwidth=12 src="index.html" width="100%" height="95%" scrolling=auto></IFRAME> 
            
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2015 版权所有 中国药用植物资源数据库</p></div>
<script>navList(12);</script>
           
    </body>
</html>
