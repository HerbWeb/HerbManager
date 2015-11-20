package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.userOp;
import com.model.adminInfo;
import com.model.userInfo;
import com.utils.tools;

/**
 * 注解WebServlet用来描述一个Servlet
 * 属性name描述Servlet的名字,可选
 * 属性urlPatterns定义访问的URL,或者使用属性value定义访问的URL.(定义访问的URL是必选属性)
 */
@WebServlet(name="loginServlet",urlPatterns="/loginServlet")
public class loginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public loginServlet() {
		super();
	}
	
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=GBK");
	        request.setCharacterEncoding("GBK");
	        
	    adminInfo a = new adminInfo();
		a.setAccountName(request.getParameter("name")); 
		a.setPassword(request.getParameter("password"));
		HttpSession session =request.getSession();
			//实例化一个数据层访问对象
	                //loginOp u = new loginOp();
			try {
				 if(userOp.isExist(a))
				 {        response.sendRedirect("index.html"); 
				          session.setAttribute("name",a.getAccountName());
				          }
	                 else
	                      response.sendRedirect("login.html");
				//request.setAttribute("info",new String("<br><br><center><h1><font color=red>注册成功！恭喜！！" +"</font></h1></center><br>"));
				//request.setAttribute("id", new String("l"));
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }
	 @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }

	    /**
	     * Handles the HTTP
	     * <code>POST</code> method.
	     *
	     * @param request servlet request
	     * @param response servlet response
	     * @throws ServletException if a servlet-specific error occurs
	     * @throws IOException if an I/O error occurs
	     */
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }
}
