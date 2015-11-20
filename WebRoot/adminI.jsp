<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.authorization,com.db.authOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>中国药用植物资源数据库管理系统</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link rel="stylesheet" type="text/css" href="css/style4.css" />
       <link rel="stylesheet" href="css/bootstrap.min.css">

	
  </head>
   
  <body>
  <div class="title_right"><span class="pull-right margin-bottom-5"></span><strong>权限管理</strong></div>
<%
    List<authorization> result = authOp.getAllAuth();
 %>
<table id="rounded-corner" border="0" width="900">
    <thead>
    	<tr>
            <th scope="col" class="rounded">序号</th>
            <th scope="col" class="rounded">管理员名</th>
            <th scope="col" class="rounded">资讯权限</th>
            <th scope="col" class="rounded">用户权限</th>
            <th scope="col" class="rounded-q4">数据权限</th>
             <th scope="col" class="rounded">分类权限</th>
            <th scope="col" class="rounded-q4">检索权限</th>
             <th scope="col" class="rounded-q4">评论权限</th>
              <th scope="col" class="rounded-q4">系统权限</th>
              <th scope="col" class="rounded-q4">操作</th>
        </tr>
    </thead>
       
    <tbody>
    <% for(int i=0;i<result.size();i++) {
   authorization auth=result.get(i);
%>
    	<tr >
        	<!-- <td><input type="checkbox" name="" /></td> -->
            <td><%=i+1 %></td>
            <td><%=auth.name %></td>
            <td><%=auth.newsOp %></td>
            <td><%=auth.userOp %></td>
            <td><%=auth.dataOp %></td>
            <td><%=auth.classificationOp %></td>
            <td><%=auth.searchOp %></td>
            <td><%=auth.commentOp %></td>
            <td><%=auth.systemOp %></td>

            <td><a href="<%=request.getContextPath()%>\userServlet>" ><img id="i"src="images/edit.png"  alt="" title="" border="0" /></a></td>
        </tr>
 <%} %>       
    	
    </tbody>
</table>
     
  </body>
</html>
