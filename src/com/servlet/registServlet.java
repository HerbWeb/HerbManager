package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.userOp;
import com.model.userInfo;
import com.utils.tools;
@WebServlet(name="registServlet",urlPatterns="/registServlet")
public class registServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public registServlet() {
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
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        
        userInfo a = new userInfo();
        a.setAccountName(request.getParameter("name")); 
        System.out.println(a.getAccountName());
		a.setPassword(tools.MD5String(request.getParameter("password")));
		System.out.println(a.getPassword());
		a.setDateTime(new java.sql.Timestamp(System.currentTimeMillis()).toString().replaceAll("\\..*", ""));
		//PrintWriter out=((ServletResponse) request).getWriter(); 
		//实例化一个数据层访问对象
                userOp u = new userOp();
		try {
			if(!u.isExistName(a.getAccountName())){
			 if(u.regist(a))
                                response.sendRedirect("index.jsp"); 
			}
			else {
				//out.print("<script language='javascript'>alert('the name doesnot exit');window.location.href='Login.jsp';</script>");
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
