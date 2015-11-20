<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.treeInfo,com.db.herbOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>中国药用植物资源数据库管理系统</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link rel="stylesheet" type="text/css" href="jquery-easyui-1.4/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.4/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui-1.4/demo.css">
	<script type="text/javascript" src="jquery-easyui-1.4/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-easyui-1.4/jquery.easyui.min.js"></script>
	<script type="text/javascript">
	function test(){
	window.alert("请输入账户！"); 
	}
	</script>
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
  </head>
   <%List<String> ke=herbOp.getAllKe(); %>
  <body>
     <div class="easyui-panel" style="padding:5px">
		<ul class="easyui-tree">
			<li data-options="state:'closed'" >
				<span>药用植物资源</span>
				<ul>
				<%for(int i=0;i<ke.size() ;i++) {
				 treeInfo tree=new treeInfo();
				 tree.ke=ke.get(i);
				%>
					<li data-options="state:'closed'">
						<span><%=ke.get(i)%></span>
					 	 <ul>
						<% List<String> tre=herbOp.getAllByKe(tree);
						for(int j=0;j<tre.size();j++){
						 %>
						<li data-options="state:'closed'">
						<span><%=tre.get(j)%></span>
						<ul>
						<% tree.shu=tre.get(j);
						List<String> ming=herbOp.getAllByShu(tree);
						for(int k=0;k<ming.size();k++){
						 %>
						<li><a href="yaoInfo.jsp?zhongyaoming=<%=ming.get(k)%>" target ="Right"><%=ming.get(k) %></a></li>
							<%} %>
						</ul>
						</li>
						<%} %>
						</ul> 
							</li><%} %>
				</ul>
			</li>
		</ul>
	</div>
  </body>
</html>
