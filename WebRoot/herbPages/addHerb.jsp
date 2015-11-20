<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.model.herbInfo,com.db.herbOp,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
    <title>中草药管理系统</title>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/flexselect.css" type="text/css" media="screen" />
   <script src="../js/jquery.min.js" type="text/javascript"></script>
   <script src="../js/liquidmetal.js" type="text/javascript"></script>
   <script src="../js/jquery.flexselect.js" type="text/javascript"></script>
   <script type="text/javascript">
   
      $(document).ready(function() {
        $("select[class*=flexselect]").flexselect();
        $("input:text:enabled:first").focus();
        $("form").submit(function() {
          alert($(this).serialize());
          return false;
        });
      });
    
   </script>
</head>
<jsp:useBean id = "herbOp" scope = "page" class="com.db.herbOp" />
<% 
  herbInfo herb=new herbInfo();
  
  request.getSession().setAttribute("herbUpdate", "false"); 
  if(request.getQueryString()!=null){
    herb.setZhongyaoming(new String(request.getParameter("zhongyaoming").getBytes("ISO-8859-1"),"UTF-8"));
    herb=herbOp.getByZYName(herb);
    System.out.println(herb.getZhongyaoming());
     request.getSession().setAttribute("herbUpdate", "true"); 
  }

   %>  
<body>
<div class="title_right"><span class="pull-right margin-bottom-5"></span><strong><%=request.getQueryString()!=null?"编辑药物":"添加药物" %></strong></div>
<div class="content">
        <div class="container">
            <div class="row">
                <!-- 左侧导航 -->
                <div class="col-xs-2 col-sm-2 nav-left">
               
                </div>
    <!-- 右侧内容 -->
                <div class="col-xs-10 col-sm-10">
                    <div>
            
                        <!-- 标签对应内容 -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="tab-1">
                                <!-- 板块1 -->
                                 <form name="add" action="loginServlet" onsubmit="return Juge(adminlogin)" method="post">
                                <div class="right-part right-part-one">
                                        <h5>名称信息</h5>
                                        <div class="form-group col-xs-6 col-sm-6">
                                            <label for="inputEmail3" class="control-label">中药名</label>
                                            <input type="text" class="form-control" name="zhongyaoming" placeholder="中药名" value="<%=herb.getZhongyaoming()==null?"":herb.getZhongyaoming() %>">
                                            <label for="inputPassword3" class="control-label">所属植物名</label>
                                            <input type="text" class="form-control" name="suoshuzhiwuming" placeholder="所属植物名" value="<%=herb.getSuoshuzhiwuming()==null?"":herb.getSuoshuzhiwuming() %>">
                                        </div>
                                        <div class="form-group col-xs-6 col-sm-6">
                                            <label for="inputEmail3" class="control-label">别名</label>
                                            <input type="text" class="form-control" name="bieming" placeholder="别名"  value="<%=herb.getYaocaibieming()==null?"":herb.getYaocaibieming() %>">
                                            <label for="inputPassword3" class="control-label">拉丁名</label>
                                            <input type="text" class="form-control" name="ladingming" placeholder="拉丁名" value="<%=herb.getLadingming()==null?"":herb.getLadingming() %>">
                                        </div>
                                </div>
                                <!-- 板块2 -->
                                <div class="right-part right-part-two">
                                        <h5>所属</h5>
                                        <div class="form-group col-xs-6 col-sm-6">
                                            <label for="inputEmail3" class="col-sm-2 control-label">门</label>
                                            <div class="col-sm-10">
                                                <select id="president" class="flexselect" name="president">
                                                 <option value=""></option>
                                                 <%  List<String> men=herbOp.getAllMen();
                                                     for(int i=0;i<men.size();i++){
                                                      if(!men.get(i).equals(herb.getMen())){
                                                  %>
                                                    <option value="<%=i+1 %>>"><%=men.get(i) %></option>
                                                   <%} 
                                                   else{
                                                   %>
                                                    <option value="<%=i+1 %>" selected="selected"><%=men.get(i) %></option>
                                                    <%} }%>
                                                    </select>
                                                </div>
                                            <label for="inputPassword3" class="col-sm-2 control-label">科</label>
                                            <div class="col-sm-10">
                                                <select name="ke" id="" class="flexselect" >
                                                   <option value=""></option>
                                                   <%  List<String> ke=herbOp.getAllKe();
                                                     for(int i=0;i<ke.size();i++){
                                                      if(!ke.get(i).equals(herb.getKe())){
                                                  %>
                                                    <option value="<%=i+1 %>>"><%=ke.get(i) %></option>
                                                   <%} 
                                                   else{
                                                   %>
                                                    <option value="<%=i+1 %>" selected="selected"><%=ke.get(i) %></option>
                                                    <%}} %>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group col-xs-6 col-sm-6">
                                            <label for="inputEmail3" class="col-sm-2 control-label">纲</label>
                                            <div class="col-sm-10">
                                                <select name="gang" id="" class="flexselect">
                                                    <option value=""></option>
                                                    <%  List<String> gang=herbOp.getAllGang();
                                                     for(int i=0;i<gang.size();i++){
                                                     if(!gang.get(i).equals(herb.getGang())){
                                                  %>
                                                    <option value="<%=i+1 %>>"><%=gang.get(i) %></option>
                                                   <%} 
                                                   else {
                                                   %>
                                                    <option value="<%=i+1 %>" selected="selected"><%=gang.get(i) %></option>
                                                    <%}} %>
                                                </select>
                                            </div>
                                            <label for="inputPassword3" class="col-sm-2 control-label">属</label>
                                            <div class="col-sm-10">
                                                <select name="shu" id="" class="flexselect">
                                                    <option value=""></option> 
                                                    <%  List<String> shu=herbOp.getAllShu();
                                                     for(int i=0;i<shu.size();i++){
                                                      if(!shu.get(i).equals(herb.getShu())){
                                                  %>
                                                    <option value="<%=i+1 %>>"><%=shu.get(i) %></option>
                                                   <%} 
                                                   else{
                                                   %>
                                                    <option value="<%=i+1 %>" selected="selected"><%=shu.get(i) %></option>
                                                    <%} 
                                                    }
                                                    %>
                                                </select>
                                            </div>
                                        </div>
                                </div>
                                <!-- 板块3 -->
                                <div class="right-part right-part-three">
                                        <h5>药·功能</h5>
                                        <div class="form-group col-sm-4">
                                            <label for="exampleInputName2">药性分类</label>
                                            <select name="yaoxingfenlei" id="" class="flexselect">
                                               <option value=""></option>
                                                <%  List<String> yaoxing=herbOp.getAllYaoxing();
                                                     for(int i=0;i<yaoxing.size();i++){
                                                      if(!yaoxing.get(i).equals(herb.getYaoxingfenlei())){
                                                  %>
                                                    <option value="<%=i+1 %>"><%=yaoxing.get(i) %></option>
                                                   <%} 
                                                   else{
                                                   %>
                                                    <option value="<%=i+1 %>" selected="selected"><%=yaoxing.get(i) %></option>
                                                    <%} }%>
                                            </select>
                                        </div>
                                        <div class="form-group col-sm-4">
                                            <label for="exampleInputEmail2">性味</label>
                                            <input type="text" class="form-control" name="xingwei" value="<%=herb.getXingwei()==null?"":herb.getXingwei() %>" >
                                        </div>
                                        <div class="form-group col-sm-4">
                                            <label for="exampleInputEmail2">归经</label>
                                            <input type="text" class="form-control" name="guijing" value="<%=herb.getGuijing()==null?"":herb.getGuijing() %>">
                                        </div>
                                        <div class="form-group col-xs-6 col-sm-6">
                                            <label for="">功能</label>
                                            <textarea class="form-control" name="gongneng" rows="2"><%=herb.getGongneng()==null?"":herb.getGongneng() %></textarea>
                                        </div>
                                        <div class="form-group col-xs-6 col-sm-6">
                                            <label for="">主治</label>
                                            <textarea class="form-control" name="zhuzhi" rows="2"><%=herb.getZhuzhi()==null?"":herb.getZhuzhi() %></textarea>
                                        </div>
                                </div>
                                <!-- 板块4 -->
                                <div class="right-part right-part-three">

                                        <h5>部位·用法</h5>
                                        <div class="form-group col-sm-6">
                                            <label for="exampleInputName2">入药部位</label>
                                            <input type="text" class="form-control" name="ruyaobuwei" value="<%=herb.getRuyaobuwei()==null?"":herb.getRuyaobuwei() %>">
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <label for="exampleInputEmail2">主要产地</label>
                                            <input type="text" class="form-control" name="chandi" value="<%=herb.getChandi()==null?"":herb.getChandi() %>">
                                        </div>

                                        <div class="form-group col-xs-6 col-sm-6">
                                            <label for="">用法用量</label>
                                            <textarea class="form-control"name="yongfayongliang" rows="2"><%=herb.getYongfayongliang()==null?"":herb.getYongfayongliang() %></textarea>
                                        </div>
                                        <div class="form-group col-xs-6 col-sm-6">
                                            <label for="">炮制</label>
                                            <textarea class="form-control" name="paozhi"rows="2"><%=herb.getPaozhi()==null?"":herb.getPaozhi() %></textarea>
                                        </div>
                                    
                                </div>
                                <div class="submit-wrap">
                                    <button class="btn btn-default add-submit"><%=request.getQueryString()!=null?"更新":"添加" %></button>
                                </div>
                                </form>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab-2">...</div>
                        </div>
                    </div>
                </div>
            </div>
                    </div>
    </div>
    
</body>


</html>
