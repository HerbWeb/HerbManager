<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<title>高级检索</title>

		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">

		<link href="css/css.css" rel="stylesheet" type="text/css" />

		<script language="JavaScript" src="js/Home.js"></script>
	</head>

	<body class="bj">
		<form name="aspnetForm" method="post" action="Default.aspx" id="aspnetForm">
			<div class="bj">
				<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td height="96" align="right" valign="top" background="images/home/photo_01.jpg">

							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td height="96" align="right" valign="bottom">
										<table border="0" cellspacing="0" cellpadding="0" style="margin: 0 14px 0 0">
											<tr>
												<td height="25" valign="top" class="wenz8l">
													<!--获取系统时间 星期--><span id="localtime"></span>
													<script type="text/javascript">
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
				<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" >
					<tr>
						<td height="53" background="images/home/top_04.jpg">
							<table width="1000" border="0" cellspacing="0" cellpadding="0" style="height: 30px">
								<tr>
									<td width="780" align="center">
										<table border="0" cellspacing="0" cellpadding="0">
											<tr align="center">
												<td>

													<table id="ctl00_Menu1" class="ctl00_Menu1_2" cellpadding="0" cellspacing="0" border="0">
														<tr>
															<td onmouseover="Menu_HoverStatic(this)" onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)" id="ctl00_Menu1n0">
																<table class="ctl00_Menu1_4" cellpadding="0" cellspacing="0" border="0" width="100%">
																	<tr>
																		<td style="white-space: nowrap;">
																			<a class="ctl00_Menu1_1 ctl00_Menu1_3" href="Home.jsp">主页</a>
																		</td>
																	</tr>
																</table>
															</td>
															<td style="width: 3px;"></td>
															<td style="width: 30px;"></td>
															<td onmouseover="Menu_HoverStatic(this)" onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)" id="ctl00_Menu1n1">
																<table class="ctl00_Menu1_4" cellpadding="0" cellspacing="0" border="0" width="100%">
																	<tr>
																		<td style="white-space: nowrap;">
																			<a class="ctl00_Menu1_1 ctl00_Menu1_3" href="AdvancedSearch.jsp">高级检索</a>
																		</td>
																	</tr>
																</table>
															</td>
															<td style="width: 30px;"></td>
															<td onmouseover="Menu_HoverStatic(this)" onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)" id="ctl00_Menu1n2">
																<table class="ctl00_Menu1_4" cellpadding="0" cellspacing="0" border="0" width="100%">
																	<tr>
																		<td style="white-space: nowrap;">
																			<a class="ctl00_Menu1_1 ctl00_Menu1_3" href="BrowseDB.jsp">浏览数据库</a>
																		</td>
																	</tr>
																</table>
															</td>
															<td style="width: 30px;"></td>
															<td onmouseover="Menu_HoverStatic(this)" onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)" id="ctl00_Menu1n3">
																<table class="ctl00_Menu1_4" cellpadding="0" cellspacing="0" border="0" width="100%">
																	<tr>
																		<td style="white-space: nowrap;">
																			<a class="ctl00_Menu1_1 ctl00_Menu1_3" href="HerbalCuisine.jsp">特色药膳</a>
																		</td>
																	</tr>
																</table>
															</td>
															<td style="width: 30px;"></td>
															<td onmouseover="Menu_HoverStatic(this)" onmouseout="Menu_Unhover(this)" onkeyup="Menu_Key(event)" id="ctl00_Menu1n6">
																<table class="ctl00_Menu1_4" cellpadding="0" cellspacing="0" border="0" width="100%">
																	<tr>
																		<td style="white-space: nowrap;">
																			<a class="ctl00_Menu1_1 ctl00_Menu1_3" href="about.jsp">关于本库</a>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>

												</td>
										</table>
									</td>

									<td width="220" align="center">
										<table border="0" align="center" cellpadding="0" cellspacing="0">
											<tr align="center">
												<td align="left" valign="middle">
													<input type="text" style="width: 140px" placeholder="请输入植物中文名">
												</td>
												<td width="46" align="right" class="wenzi8">
													<img src="images/home/u17.png">
												</td>
											</tr>
										</table>
									</td>
									</tr>
							</table>
						</td>
						</tr>
				</table>

				<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
					<tr>
						<td>
							<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
								<tr>
									<td height="8" colspan="3">
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table width="1000" border="0" align="top" height="300" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
								<tr>
									<td>
										<table width="995" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td width="41" id="bg_left"></td>
													<td background="images/iFlora_detail_bannar_08.jpg" align="center">

														<table style="width:866px;margin-top:10px;margin-bottom:10px;" cellpadding="0" cellspacing="0">
															<tbody>
																<tr>
																	<td height="30" background="images/browse/detail_bannar.jpg" class="content_h3">&nbsp;&nbsp;高级搜索</td>
																</tr>
																<tr>
																	<td align="center">
																		<div id="ContentPlaceHolder1_Panel1">

																		</div>
																		<table style="width:500px;margin-top:20px;" cellpadding="0" cellspacing="5">
																			<tbody>
																				<tr>
																					<td></td>
																					<td>
																						<input name="ctl00$ContentPlaceHolder1$tbx_spinfo" type="text" id="ContentPlaceHolder1_tbx_spinfo" style="width:200px;">
																					</td>
																					<td>
																						检索范围：
																					</td>
																					<td>
																						<select name="ctl00$ContentPlaceHolder1$ddl_spinfo" id="ContentPlaceHolder1_ddl_spinfo">
																							<option value="species_lname">药材名</option>
																							<option value="reference">药材别名</option>
																							<option value="reference">药材拉丁名</option>																							
																							<option value="species_name">药材所属种</option>
																							<option value="genus_lname">药材所属属</option>
																							<option value="family_lname">药材所属科</option>
																							<option value="description">药材所属药性</option>
																							<option value="usefulness">药材主治症状</option>
																							<option value="explain">药材主要产地</option>
																						</select>
																					</td>
																				</tr>
																				<tr>
																					<td></td>
																					<td>示例: 人参</td>
																					<td></td>
																					<td></td>
																				</tr>
																				<tr>
																					<td>
																						<select name="ctl00$ContentPlaceHolder1$ddl_condition_distribution" id="ContentPlaceHolder1_ddl_condition_distribution">
																							<option value="and">and</option>
																							<option value="or">or</option>

																						</select>
																					</td>
																					<td>
																						<input name="ctl00$ContentPlaceHolder1$tbx_distribution" type="text" id="ContentPlaceHolder1_tbx_distribution" style="width:200px;">
																					</td>
																					<td>
																						检索范围：
																					</td>
																					<td>
																						<select name="ctl00$ContentPlaceHolder1$ddl_distribution" id="ContentPlaceHolder1_ddl_distribution">																							
																							<option value="explain">药材主要产地</option>
																							<option value="species_lname">药材名</option>
																							<option value="reference">药材别名</option>
																							<option value="reference">药材拉丁名</option>																							
																							<option value="species_name">药材所属种</option>
																							<option value="genus_lname">药材所属属</option>
																							<option value="family_lname">药材所属科</option>
																							<option value="description">药材所属药性</option>
																							<option value="usefulness">药材主治症状</option>
																					</td>
																				</tr>
																				<tr>
																					<td></td>
																					<td>示例: 四川、贵州、云南</td>
																					<td></td>
																					<td></td>
																				</tr>
																				<tr>
																					<td>
																						<select name="ctl00$ContentPlaceHolder1$ddl_condition_seed" id="ContentPlaceHolder1_ddl_condition_seed">
																							<option value="and">and</option>
																							<option value="or">or</option>

																						</select>
																					</td>
																					<td>
																						<input name="ctl00$ContentPlaceHolder1$tbx_seed" type="text" id="ContentPlaceHolder1_tbx_seed" style="width:200px;">
																					</td>
																					<td>
																						检索范围：
																					</td>
																					<td>
																						<select name="ctl00$ContentPlaceHolder1$ddl_seed" id="ContentPlaceHolder1_ddl_seed">
																							<option value="description">药材所属药性</option>
																							<option value="species_lname">药材名</option>
																							<option value="reference">药材别名</option>
																							<option value="reference">药材拉丁名</option>																							
																							<option value="species_name">药材所属种</option>
																							<option value="genus_lname">药材所属属</option>
																							<option value="family_lname">药材所属科</option>																							
																							<option value="usefulness">药材主治症状</option>
																							<option value="explain">药材主要产地</option>
																						</select>
																					</td>
																				</tr>
																				<tr>
																					<td></td>
																					<td>示例: 补虚药</td>
																					<td></td>
																					<td></td>
																				</tr>
																				<tr>
																					<td>
																						<select name="ctl00$ContentPlaceHolder1$ddl_condition_colinfo" id="ContentPlaceHolder1_ddl_condition_colinfo">
																							<option value="and">and</option>
																							<option value="or">or</option>

																						</select>
																					</td>
																					<td>
																						<input name="ctl00$ContentPlaceHolder1$tbx_colinfo" type="text" id="ContentPlaceHolder1_tbx_colinfo" style="width:200px;">
																					</td>
																					<td>
																						检索范围：
																					</td>
																					<td>
																						<select name="ctl00$ContentPlaceHolder1$ddl_colinfo" id="ContentPlaceHolder1_ddl_colinfo">
																							<option value="usefulness">药材主治症状</option>
																							<option value="species_lname">药材名</option>
																							<option value="reference">药材别名</option>
																							<option value="reference">药材拉丁名</option>																							
																							<option value="species_name">药材所属种</option>
																							<option value="genus_lname">药材所属属</option>
																							<option value="family_lname">药材所属科</option>
																							<option value="description">药材所属药性</option>																							
																							<option value="explain">药材主要产地</option>
																						</select>
																					</td>
																				</tr>
																				<tr>
																					<td></td>
																					<td>示例: 体虚欲脱</td>
																					<td></td>
																					<td></td>
																				</tr>
																				<tr>
																					<td align="center" colspan="4" style="padding-top:10px">
																						<input type="submit" name="ctl00$ContentPlaceHolder1$btn_Adquery" value="查询名录" id="ContentPlaceHolder1_btn_Adquery" orecolor="Black" onmouseover="this.style.backgroundColor='#7ef96d'" onmouseout="this.style.backgroundColor='#FFF';" style="border-style:Groove;font-family:微软雅黑;font-size:14px;">
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td>
																		<span id="ContentPlaceHolder1_lbl_result"></span>
																	</td>
																</tr>
																<tr>
																	<td>

																	</td>
																</tr>
																<tr>
																	<td>

																	</td>
																</tr>
															</tbody>
														</table>

													</td>
													<td width="36" id="bg_right"></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td width="1000" height="50" valign="top">
							<br />
							<table width="1000" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td height="50" align="center" background="images/home/bottom_01.gif" class="wenzi3">
										版权所有：中央民族大学信息工程学院软件工程
										<br /> 本数据库由中央民族大学信息工程学院软件工程提供支持</td>
								</tr>
								<tr>
									<td height="4" background="images/home/bottom_02.gif"></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>

		</form>

	</body>

</html>
