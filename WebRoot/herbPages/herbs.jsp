<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.herbAttr,com.db.herbOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>中国药用植物资源数据库管理系统</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link rel="stylesheet" type="text/css" href="../css/skin.css" />
       <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
       <script type="text/javascript">
       function del(){
  var fdel=window.confirm("是否确定删除？");
  if (fdel)
  { return true; }
  else
  { return false; }  
}
       </script>
      </head>
   
    <body>
    <div class="title_right"><span class="pull-right margin-bottom-5"></span><strong>药物属性</strong></div>
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="">
                </td>
                <td valign="top" >
                       
                </td>
                <td width="16" valign="top" background=""></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">

                                                <table width="100%"  class="cont tr_color" >
                                               
                                                 
                                                    <tr align="right">
                                                        <!-- <th>选中</th> -->
                                                        <th>序号</th>
                                                        <th>中药名</th>
                                                        <th>入药部位</th>
                                                        <th>门</th>
                                                        <th>纲</th>
                                                        <th>科</th>
                                                        <th>属</th>
                                                        <th>产地</th>
                                                        <th>操作</th>
                                                    </tr>
                                                    
                                                     <%
                                                    List<herbAttr> result =herbOp.getAllHerb();
                                                    int pageSize=20;
                                                    int pageCount=result.size()/pageSize;
                                                    int count=0;
                                                    int curPage=1;
                                                    if(request.getQueryString()!=null){
                                                      String tmp = request.getParameter("curPage");
                                                      curPage = Integer.parseInt(tmp);
                                                      if(curPage>=pageCount) 
                                                          curPage = pageCount;
                                                      if(curPage<=0)
                                                           curPage = 1;
                                                     }
                                                    for(int i=(curPage-1)*pageSize;i<result.size();i++){
                                                    if(count>=pageSize) break;
                                                    count++;
                                                 %>
                                                    <tr align="center" class="d">
                                                        <!-- <td><input type="checkbox" value="" /></td> -->
                                                        <td><%=i+1 %></td>
                                                        <td><%=result.get(i).zhongyaoming %></td>
                                                        <td><%=result.get(i).ruyaobuwei %></td>
                                                        <td><%=result.get(i).men %></td>
                                                        <td><%=result.get(i).gang %></td>
                                                        <td><%=result.get(i).ke %></td>
                                                        <td><%=result.get(i).shu %></td>
                                                        <td><%=result.get(i).chandi %></td>
                                                        <td><a href="addHerb.jsp?zhongyaoming=<%=result.get(i).zhongyaoming%>">编辑</a>|<a href="javascript:void(0);" onclick="del()">删除</a></td>
                                                    </tr><%} %>
                                                    
                                                </table>
                                           <a href = "herbs.jsp?curPage=1" >首页</a>  
                                           
<a href = "herbs.jsp?curPage=<%=curPage-1%>" >上一页</a>  
<a href = "herbs.jsp?curPage=<%=curPage+1%>" >下一页</a>  
<a href = "herbs.jsp?curPage=<%=pageCount%>" >尾页</a>  
第<%=curPage%>页/共<%=pageCount%>页  
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 产品列表结束 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        
                    </table>
    </body>
     
</html>
