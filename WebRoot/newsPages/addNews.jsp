<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.articleInfo,com.db.articleOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <title>中国药用植物资源数据库管理系统</title>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
       <script type="text/javascript">
        function test() {  
        //JavaScript判空，如果确定  
        var editor_data = CKEDITOR.instances.editor.getData();  
        if(editor_data==null||editor_data==""){  
            alert("数据为空不能提交");  
        } 
    }  
    function Juge(form1){
   if(form1.title.value===""){
    window.alert("不能没有文章名"); 
    form1.title.focus(); 
    return (false); 
   }
   var editor_data = CKEDITOR.instances.editor.getData();
   if(editor_data ===""){
    window.alert("文章主体不能为空"); 
    form1.editor.focus(); 
    return (false); 
   }  
}
 
</script>
  <%articleInfo article=new articleInfo();
  article.body="";
  article.title="";
  request.getSession().setAttribute("update", "false"); 
  if(request.getQueryString()!=null){
    article.id=request.getParameter("id");
    article=articleOp.getById(article);
  
     request.getSession().setAttribute("update", "true"); 
  }
  System.out.println((String)request.getSession().getAttribute("update"));
/* /*    article=articleOp.getByTitle(article);  */
   %>  
      </head>
      <body>
      <div class="title_right"><span class="pull-right margin-bottom-5"></span><strong><%=request.getQueryString()!=null?"编辑资讯":"发布资讯" %></strong></div>
       <div class="post_topic" align="center">
			<form name="article" method="post"   action="newsServlet" onsubmit="return Juge(article)">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"> 
					<tbody><tr>
                         <th>标题：</th>
                            <td>
                               <input type="text"  name="title"  id="" size="20" tabindex="1" maxlength="76" style="width: 594px; " value="<%=article.title %>">
                               <br />
                   
                           </td>
                           <tr>
                            <th>内容：</th>
                            <td>
                            <br />
                            <textarea rows="60" cols="80" name="editor" ><%=article.body %></textarea>
                            <script type="text/javascript">CKEDITOR.replace('editor');</script><br/>
                            <input type="submit"  value="提 交" onclick="test()"  name="Submit" >
                            </td>
                            </tr>             
                        <tr>

							 </td>
                          </tr>
                        </tbody>
                        </table>
							 </form>

				  </div>
      </body>
     
</html>
