<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.articleInfo,com.db.articleOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>关于本库</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">


<link href="css/css.css" rel="stylesheet" type="text/css" />

<script language="JavaScript" src="js/Home.js"></script>
      </head>
     <%--    <jsp:useBean id = "articleOp" scope = "page" class="com.db.articleOp" /> --%>
       <% articleInfo article=new articleInfo();
       article.id="00000";
       article=articleOp.getById(article);
%>
   <body class="bj">
	<form name="aspnetForm" method="post" action="Default.aspx"
		id="aspnetForm">
		<div class="bj">
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="96" align="right" valign="top"
						background="images/home/photo_01.jpg">

						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="96" align="right" valign="bottom">
									<table border="0" cellspacing="0" cellpadding="0"
										style="margin: 0 14px 0 0">
										<tr>
											<td height="25" valign="top" class="wenz8l">
												<!--获取系统时间 星期--> <span id="localtime"></span> <script
													type="text/javascript">
													tick();
												</script>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="53" background="images/home/top_04.jpg">
						<table width="1000" border="0" cellspacing="0" cellpadding="0"
							style="height: 30px">
							<tr>
								<td width="780" align="center">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr align="center">
											<td>

												<table id="ctl00_Menu1" class="ctl00_Menu1_2"
													cellpadding="0" cellspacing="0" border="0">
													<tr>
														<td onmouseover="Menu_HoverStatic(this)"
															onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)"
															id="ctl00_Menu1n0">
															<table class="ctl00_Menu1_4" cellpadding="0"
																cellspacing="0" border="0" width="100%">
																<tr>
																	<td style="white-space: nowrap;"><a
																		class="ctl00_Menu1_1 ctl00_Menu1_3" href="Home.html">主页</a>
																	</td>
																</tr>
															</table></td>
														<td style="width: 3px;"></td>
														<td style="width: 30px;"></td>
														<td onmouseover="Menu_HoverStatic(this)"
															onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)"
															id="ctl00_Menu1n1">
															<table class="ctl00_Menu1_4" cellpadding="0"
																cellspacing="0" border="0" width="100%">
																<tr>
																	<td style="white-space: nowrap;"><a
																		class="ctl00_Menu1_1 ctl00_Menu1_3"
																		href="AdvancedSearch.html">高级检索</a></td>
																</tr>
															</table></td>
														<td style="width: 30px;"></td>
														<td onmouseover="Menu_HoverStatic(this)"
															onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)"
															id="ctl00_Menu1n2">
															<table class="ctl00_Menu1_4" cellpadding="0"
																cellspacing="0" border="0" width="100%">
																<tr>
																	<td style="white-space: nowrap;"><a
																		class="ctl00_Menu1_1 ctl00_Menu1_3"
																		href="BrowseDB.html">浏览数据库</a></td>
																</tr>
															</table></td>
														<td style="width: 30px;"></td>
														<td onmouseover="Menu_HoverStatic(this)"
															onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)"
															id="ctl00_Menu1n3">
															<table class="ctl00_Menu1_4" cellpadding="0"
																cellspacing="0" border="0" width="100%">
																<tr>
																	<td style="white-space: nowrap;"><a
																		class="ctl00_Menu1_1 ctl00_Menu1_3"
																		href="HerbalCuisine.html">特色药膳</a></td>
																</tr>
															</table></td>
														<td style="width: 30px;"></td>
														<td onmouseover="Menu_HoverStatic(this)"
															onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)"
															id="ctl00_Menu1n6">
															<table class="ctl00_Menu1_4" cellpadding="0"
																cellspacing="0" border="0" width="100%">
																<tr>
																	<td style="white-space: nowrap;"><a
																		class="ctl00_Menu1_1 ctl00_Menu1_3"
																		href="AboutDB.html">关于本库</a></td>
																</tr>
															</table></td>
													</tr>
												</table></td>
									</table></td>

								<td width="220" align="center">
									<table border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr align="center">
											<td align="left" valign="middle"><input type="text"
												style="width: 140px" placeholder="请输入植物中文名"></td>
											<td width="46" align="right" class="wenzi8"><img
												src="images/home/u17.png"></td>
										</tr>
									</table></td>
							</tr>
						</table></td>
				</tr>
			</table>

			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0" bgcolor="#FFFFFF">
				<tr>

					<td><table width="1000" border="0" align="center"
							cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
							<tr>
								<td height="8" colspan="3">
									
									 <table width="980" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="41" id="bg_left"></td>
                                        <td background="images/iFlora_detail_bannar_08.jpg" align="center">
                                          
    <div style="font-size:26px;margin-top:30px;padding:0;color:#000;font-family:黑体;font-weight:bold;"><%=article.title %></div>  
    <p >
        <div style="width:95%;font-family:楷体;line-height:200%;font-size:16px;color:#000;text-align:left;text-indent:2em;">
            <%=article.body %>
            
        </div>
    </p>

                                        </td>
                                        <td width="36" id="bg_right"></td>
                                    </tr>
                                </table>
									
									
									</td>
							</tr>
						</table>
					</td>

				</tr>
				<tr>
					<td width="1000" height="50" valign="top"><br />
						<table width="1000" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="50" align="center"
									background="images/home/bottom_01.gif" class="wenzi3">
									版权所有：中央民族大学信息工程学院软件工程 <br /> 本数据库由中央民族大学信息工程学院软件工程提供支持</td>
							</tr>
							<tr>
								<td height="4" background="images/home/bottom_02.gif"></td>
							</tr>
						</table></td>
				</tr>
			</table>
		</div>

	</form>

</body>
     
</html>
