<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.articleInfo,com.db.articleOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>中国药用植物资源数据库管理系统</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
      </head>
     <%--    <jsp:useBean id = "articleOp" scope = "page" class="com.db.articleOp" /> --%>
       <% articleInfo article=new articleInfo();
       request.setCharacterEncoding("UTF-8");
       article.id=request.getParameter("id");
       articleInfo result = articleOp.getById(article); 
%>
    <body>
    <div class="page-header" align="center">
      <h1><%=result.title %></h1> 
      <tr>作者:<%=result.auther %></tr>
    </div>
    <div class="page-content clearfix" id="articleContent">
      <div class="left">

        <div class="article article_16" id="artibody" align="left">
          <%=result.body %>
        </div>
        </div>
    
    </body>
     
</html>
