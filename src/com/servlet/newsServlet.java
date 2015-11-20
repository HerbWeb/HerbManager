package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.articleOp;
import com.db.userOp;
import com.model.articleInfo;

@WebServlet(name="newsServlet",urlPatterns="/newsPages/newsServlet")
public class newsServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public newsServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
/*        if(request.getParameter("userName")!=null){*/
        articleInfo a = new articleInfo();
                a.id=new java.sql.Timestamp(System.currentTimeMillis()).toString().replaceAll("\\..*", "").replaceAll("-", "").replaceAll(":","").replaceAll(" ", "");
        		a.title=request.getParameter("title");
        		a.body=request.getParameter("editor");
        		a.date=new java.sql.Timestamp(System.currentTimeMillis()).toString().replaceAll("\\..*", "");
        		a.auther="admin";
        			//实例化一个数据层访问对象
        		articleOp u = new articleOp();
        			try {
        				if((String)request.getSession().getAttribute("update")=="false"){
        				       if(u.write(a))
        				      {       
        				    	response.sendRedirect("news.jsp"); 
        				       }
        				    }
        				else {
        					a.id=request.getParameter("id");
        					if(u.update(a))
      				      {       
      				    	response.sendRedirect("news.jsp"); 
      				       }
        					else
        						
        					response.sendRedirect("news.jsp"); 
        				}
        				//request.setAttribute("info",new String("<br><br><center><h1><font color=red>注册成功！恭喜！！" +"</font></h1></center><br>"));
        				//request.setAttribute("id", new String("l"));
        			} catch (Exception e) {
        				e.printStackTrace();
        			} 
        }
	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 processRequest(request, response);
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 processRequest(request, response);
		
	}

}
