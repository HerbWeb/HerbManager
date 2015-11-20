<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.articleInfo,com.db.articleOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>中国药用植物资源数据库管理系统</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      </head>
     <%--    <jsp:useBean id = "articleOp" scope = "page" class="com.db.articleOp" /> --%>
       <% articleInfo article=new articleInfo();
       article.id=request.getParameter("id");
       articleOp.deleteById(article);
       response.sendRedirect("news.jsp");
%>
    <body>
    </body>
     
</html>
