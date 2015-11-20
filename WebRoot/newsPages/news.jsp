<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.articleInfo,com.db.articleOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <title>公告管理</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
     <link rel="stylesheet" href="../css/bootstrap.min.css">
   <style type="text/css">
   a:link,a:visited{
    text-decoration:none;  /*超链接无下划线*/
    color: #333333;
  }
  a:hover{
    text-decoration:none;  
    color: rgb(0,153,0);
   }
</style>
    <jsp:useBean id = "articleOp" scope = "page" class="com.db.articleOp" />
     <%List<articleInfo> result = articleOp.getAllArticle(); %>
    </head>
   <body>
   <div class="title_right"><span class="pull-right margin-bottom-5"></span><strong>查看资讯</strong></div>
    <br/>
   <table id="rounded-corner" width="1300" border="0" align="center" cellpadding="0" cellspacing="0" >
       
    <tbody>
   
    <tr>
             <td colspan="3" >
               <h1>&nbsp;&nbsp;NEWS</h1>
              </td>
    </tr>
    <% for(int i=0;i<result.size();i++) {
       articleInfo article=result.get(i);
    %>
    	<tr>
            <td style="width: 750px; "> &nbsp;&nbsp;&nbsp; <img alt="" src="../images/u47.png"> <a href="showNews.jsp?id=<%=article.id %>">&nbsp;&nbsp;&nbsp;<%=article.title %></a></td>
            <td style="width: 260px; "><p><span><%=article.date %></span></p></td>
            <td style="width: 449px; "><a href="addNews.jsp?id=<%=article.id%>">编辑</a> |  <a href="deleteNews.jsp?id=<%=article.id%>">删除</a></td>
            
        </tr>
 <%} %>       
    	
    </tbody>
</table>
   
  
   
</html>
