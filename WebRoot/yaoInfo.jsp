<%@ page language="java"  pageEncoding="utf-8"%>
<%@page import="com.model.herbInfo,com.db.herbOp,java.util.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>药用植物信息树形菜单</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/css.css">

</head>

<% 
herbInfo herb=new herbInfo();

       herb.zhongyaoming=request.getParameter("zhongyaoming");
       herb.setZhongyaoming(new String(request.getParameter("zhongyaoming").getBytes("ISO-8859-1"),"UTF-8"));
       herb = herbOp.getByZYName(herb);

%>

<body>
<br>
<div id="zhongwenming">
<%=herb.getZhongyaoming() %>
</div>
	<div>
		<table style="width: 100%;" cellpadding="0" cellspacing="0">
			<tr>
				<td height="30" background="images/iFlora_detail_bannar_13.jpg"
					class="content_h3" id="toc1">&nbsp;&nbsp;物种信息</td>
			</tr>
			<tr>
				<td>
					<table style="width: 100%;margin-bottom:5px;">
						<tr>
							<td valign="top" style="padding-right:5px;text-indent:2em;">
								<div></div>
								<div style="height: 20px"><b>异名：</b><%=herb.getYaocaibieming() %></div>
								<div style="height: 20px"><b>拉丁名：</b><%=herb.getLadingming() %>        </div>
								<div  style="height: 20px"><b>产地：</b><%=herb.getChandi() %></div>
								<div style="line-height: 1.5;"><b>功能及主治：</b><%=herb.getXingwei() %><%=herb.getGongneng()%><%=herb.getZhuzhi() %></>
								</div>
								<div  style="line-height: 1.5;"><b>炮制以及用法：</b><%=herb.getPaozhi() %><%=herb.getYongfayongliang() %></div>
								
					
							</td>
							
						</tr>
						
					</table>
				</td>
			</tr>
		
			<tr>
				<td height="30" background="images/iFlora_detail_bannar_13.jpg"
					class="content_h3" id="toc5">&nbsp;&nbsp;植物照片</td>
			</tr>
			<tr>
				<td height="5"></td>
			</tr>
			<tr>
				<td>
					<div id="ContentPlaceHolder1_upl_photo">

						<div id="ContentPlaceHolder1_UpdateProgress2"
							style="display:none;">

							<img src="Images/loadinfo.gif" alt="请稍候..."
								style="position:relative;left:50%;top:50%;" />

						</div>
					</div></td>
			</tr>

		</table>

	</div>

</body>
</html>

