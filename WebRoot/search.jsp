<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.herbInfo,com.beans.search,com.db.herbOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>中国药用植物资源数据库管理系统</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link rel="stylesheet" href="css/bootstrap.min.css">
        <style type="text/css">
        * { margin-top: 0; }
table {border-collapse:collapse;}
table.cont {font-size:13px;letter-spacing:1px;border:1px solid #E1E5EE;}
table.tr_color tr.d:hover {background-color:#E4F0DF;}
table.cont tr td {height:20px;padding:5px 0;border-bottom:1px solid #E1E5EE;}
table.cont tr th {height:20px;padding:5px 0;border-bottom:1px solid #E1E5EE;background-color:#E7F1FE;}
table.cont input.text {height:20px;width:150px;}
table.cont select option {height:20px;width:120px;}
table.cont .btn {width:50px;}


    </style>
    
    <script type="text/javascript">
        $(function () {
            var loadingTime = new Date().getTime();
            window.onload = function () {
                var loadedtime = new Date().getTime();
                time = ((loadedtime - loadingTime) / 1000).toFixed(2);;
                $("#rs").append("<span style='font-family:KaiTi;color:#000;'>（用时" + time + "秒）</span>");
            }
        });
    </script>
     <script type="text/javascript">
    function Juge(form1) {
        if (form1.text1.value.replace(/(^\s*)|(\s*$)/g,"")=="" && form1.text2.value.replace(/(^\s*)|(\s*$)/g,"") == "" && form1.text3.value.replace(/(^\s*)|(\s*$)/g,"")==""&&form1.text4.value.replace(/(^\s*)|(\s*$)/g,"")=="") {
            window.alert("必须输入一个");
            form1.text1.focus();
            return (false);
        }
    };
	</script>
  </head>
  <% 
    search info=new search();
    List<herbInfo> result=new LinkedList<herbInfo>();
    info.setText1(request.getParameter("text1")==null?"":new String(request.getParameter("text1").getBytes("ISO-8859-1"),"UTF-8"));
    info.setText2(request.getParameter("text2")==null?"":new String(request.getParameter("text2").getBytes("ISO-8859-1"),"UTF-8"));
    info.setText3(request.getParameter("text3")==null?"":new String(request.getParameter("text3").getBytes("ISO-8859-1"),"UTF-8"));
    info.setText4(request.getParameter("text4")==null?"":new String(request.getParameter("text4").getBytes("ISO-8859-1"),"UTF-8"));
    
    info.setAnd_or1(request.getParameter("1and"));
    info.setAnd_or2(request.getParameter("2and"));
    info.setAnd_or3(request.getParameter("3and"));
    
    info.setScope1(request.getParameter("1scope"));
    info.setScope2(request.getParameter("2scope"));
    info.setScope3(request.getParameter("3scope"));
    info.setScope4(request.getParameter("4scope"));
    if(info.and_or1!=null){
		 result= herbOp.getResult(info);}

   %>  
   
  <body>
   <div class="title_right"><span class="pull-right margin-bottom-5"></span><strong>检索</strong></div>
  <form name="pp" method="post" action="" id="pp" onsubmit="return Juge(pp);">
   <table width="980" cellpadding="0" cellspacing="0">
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
																						<input name="text1" type="text" id="1text" style="width:200px;">
																					</td>
																					<td>
																						检索范围：
																					</td>
																					<td>
																						<select name="1scope" id="ContentPlaceHolder1_ddl_spinfo">
																							<option value="zhongyaoming">药材名</option>
																							<option value="yaocaibieming">药材别名</option>
																							<option value="ladingming">药材拉丁名</option>																							
																							<option value="suoshuzhiwuming">药材所属种</option>
																							<option value="shu">药材所属属</option>
																							<option value="ke">药材所属科</option>
																							<option value="yaoxingfenlei">药材所属药性</option>
																							<option value="zhuzhi">药材主治症状</option>
																							<option value="chandi">药材主要产地</option>
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
																						<select name="1and" id="ContentPlaceHolder1_ddl_condition_distribution">
																							<option value="and">and</option>
																							<option value="or">or</option>

																						</select>
																					</td>
																					<td>
																						<input name="text2" type="text" id="ContentPlaceHolder1_tbx_distribution" style="width:200px;">
																					</td>
																					<td>
																						检索范围：
																					</td>
																					<td>
																						<select name="2scope" id="ContentPlaceHolder1_ddl_distribution">																							
																							<option value="zhongyaoming">药材名</option>
																							<option value="yaocaibieming">药材别名</option>
																							<option value="ladingming">药材拉丁名</option>																							
																							<option value="suoshuzhiwuming">药材所属种</option>
																							<option value="shu">药材所属属</option>
																							<option value="ke">药材所属科</option>
																							<option value="yaoxingfenlei">药材所属药性</option>
																							<option value="zhuzhi">药材主治症状</option>
																							<option value="chandi" selected="selected">药材主要产地</option>
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
																						<select name="2and" id="ContentPlaceHolder1_ddl_condition_seed">
																							<option value="and">and</option>
																							<option value="or">or</option>

																						</select>
																					</td>
																					<td>
																						<input name="text3" type="text" id="ContentPlaceHolder1_tbx_seed" style="width:200px;">
																					</td>
																					<td>
																						检索范围：
																					</td>
																					<td>
																						<select name="3scope" id="ContentPlaceHolder1_ddl_seed">
																							<option value="zhongyaoming">药材名</option>
																							<option value="yaocaibieming">药材别名</option>
																							<option value="ladingming">药材拉丁名</option>																							
																							<option value="suoshuzhiwuming">药材所属种</option>
																							<option value="shu">药材所属属</option>
																							<option value="ke">药材所属科</option>
																							<option value="yaoxingfenlei"selected="selected">药材所属药性</option>
																							<option value="zhuzhi">药材主治症状</option>
																							<option value="chandi">药材主要产地</option>
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
																						<select name="3and" id="ContentPlaceHolder1_ddl_condition_colinfo">
																							<option value="and">and</option>
																							<option value="or">or</option>

																						</select>
																					</td>
																					<td>
																						<input name="text4" type="text" id="ContentPlaceHolder1_tbx_colinfo" style="width:200px;">
																					</td>
																					<td>
																						检索范围：
																					</td>
																					<td>
																						<select name="4scope" id="ContentPlaceHolder1_ddl_colinfo">
																							<option value="zhongyaoming">药材名</option>
																							<option value="yaocaibieming">药材别名</option>
																							<option value="ladingming">药材拉丁名</option>																							
																							<option value="suoshuzhiwuming">药材所属种</option>
																							<option value="shu">药材所属属</option>
																							<option value="ke">药材所属科</option>
																							<option value="yaoxingfenlei">药材所属药性</option>
																							<option value="zhuzhi" selected="selected">药材主治症状</option>
																							<option value="chandi">药材主要产地</option>
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
																		<span id="ContentPlaceHolder1_lbl_result">
																		<% if(info.and_or1!=null){
																		//List<herbInfo> result= herbOp.getResult(info);
																		    if(result.size()==0){
																		 %>
																		 <p>找不到和您的查询相符的内容或信息。</p><p>建议：</p><ul style='margin-top:0;'><li>请检查输入字词有无错误。</li><li>请尝试其他的查询词。</li><li>请改用较常见的字词。</li><li>请减少查询字词的数量。</li></ul>
																		 <%}
																		 else{
																		   
																		  %>
																		  <p style="font-size:14px;" id="rs">找到<%=result.size()%>条结果</p>
																		  <%}} %>
																		</span>
																		
																	</td>
																</tr>
																<tr>
																	<td valign="top" bgcolor="#F7F8F9">
																<% if(info.and_or1!=null){
																		    if(result.size()!=0){
																		 %>	
                   <table style="width: 100%;" class="cont tr_color" >
                        <tr >
                            <th>科名</th>
                            <th>所属植物名</th>
                            <th>中文名</th>
                            <th>拉丁名</th>
                            <th>&nbsp;</th>
                        </tr>
                        <%
                           for(int i=0;i<result.size();i++){
                        %>
                        <tr  class="d">
                            <td style="width:60px;">
                                <span id="ke"><%=result.get(i).getKe()%></span>
                            </td>
                            <td style="width:150px;">
                                <span id="suoshuzhiwuming"><%=result.get(i).getSuoshuzhiwuming() %></span>
                            </td>
                            <td style="width:180px;">
                                <span id="zhongyaoming"><%=result.get(i).getZhongyaoming() %></span>
                            </td>
                            <td>
                                <span id="ladingming"><%=result.get(i).getLadingming()%></span>
                            </td>
                            <td style="text-align:center;width:80px;text-indent:0;">
                                <a href='yaoInfo.jsp?zhongyaoming=<%=result.get(i).getZhongyaoming()%>' target="_blank">详细信息</a>
                            </td>
                        </tr>
                         <%/* if(i>=20)
                         break; */
                         }%>
                        
                        
                        </table><%}}%>
                    
                                                                           
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
                                </table>
       
  </form><br/><br/><br/><br/>
  </body>
</html>
