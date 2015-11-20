<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.userInfo,com.db.userOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>中国药用植物资源数据库管理系统</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link rel="stylesheet" type="text/css" href="css/style4.css" />
       <script type="text/javascript" src="js/jquery.min.js"></script>
     <link rel="stylesheet" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/jconfirmaction.jquery.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		$('.ask').jConfirmAction();
	});
	
	
	function delRow(id) {  
		
		 var tb = document.getElementById("rounded-corner");   
		 
		/*  if (rowIndex==null || rowIndex=='') {  
		  alert("输入删除的行");  
		  return null;  
		 }   */
		  
		 var rnum=tb.rows.length; 
		 alert("输入删除的行"+rnum+"   "+id);
		 tb.deleteRow(id);
		  
		 if (rnum==0)  
		 {  
		  alert("没有删除的行");  
		  return null;  
		 }  
		 if (rowIndex>rnum)  
		 {  
		  alert("删除的"+rowIndex+",大于表的列数");  
		  return null;  
		 }  
		 if (rowIndex>0)  
		 {  
		    
		  tb.deleteRow(rowIndex); 
		 }  
		}  
	
</script>
  </head>
   
  <body>
  <div class="title_right"><span class="pull-right margin-bottom-5"></span><strong>用户管理</strong></div>
    <!-- CSS goes in the document HEAD or added to your external stylesheet -->

<jsp:useBean id = "userOp" scope = "page" class="com.db.userOp" />
<%
    List<userInfo> result = userOp.getAllUser();
 %>
  <script type="text/javascript">
  function deleteByName(){
  }
 <%--  function delrow(user)//刪除当前行 
  { 
	var i=<%=delete(user)%>;
  }  --%>
</script>
<table id="rounded-corner" width=625px; >
    <thead>
    	<tr>
        	<th scope="col" class="rounded-company"></th>
            <th scope="col" class="rounded">序号</th>
            <th scope="col" class="rounded">账户名</th>
            <th scope="col" class="rounded">性别</th>
            <th scope="col" class="rounded">注册时间</th>
            <th scope="col" class="rounded-q4">删除</th>
        </tr>
    </thead>
       
    <tbody>
    <% for(int i=0;i<result.size();i++) {
   userInfo user=result.get(i);
%>
    	<tr id=<%=i+1 %>>
        	<td><input type="checkbox" name="" /></td>
            <td><%=i %></td>
            <td><%=user.getAccountName() %></td>
            <td><%=user.getGender()%></td>
            <td><%=user.getDateTime() %></td>

            <td><a href="<%=request.getContextPath()%>\userServlet?userName=<%=user.getAccountName()%>" <%-- onclick="delRow('<%=i+1%>')" --%>  class="ask" ><img id="i"src="images/trash.png"  alt="" title="" border="0" /></a></td>
        </tr>
 <%} %>       
    	
    </tbody>
</table>
     
    <a href="#" id="bt_red" ><strong>Delete items</strong></a> 
  </body>
</html>
