package Admin.Actions;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AdminDao.DaoFactory;
import Bean_package.User_infoBean;


@WebServlet("/UserLoginAction")
public class UserLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
    	String email,pass;
    	
    	email=request.getParameter("email");
    	pass=request.getParameter("password");
    	
    	
    	if(email.trim().length()==0 || pass.trim().length()==0) {
    		request.setAttribute("error", "Do not leave blank fields");
    		rd=request.getRequestDispatcher("login.jsp");
    	}
    	User_infoBean info=new User_infoBean();
    	info.setEmail(email);
    	info.setPass(pass);
    	
    	DaoFactory dao=DaoFactory.getDao();
    	info =dao.checklogin(info);
    	if(info!=null)
    	{
    		HttpSession session=request.getSession(true);
    		session.setAttribute( "userinfo", info);
    		rd=request.getRequestDispatcher("index2.jsp");
    		rd.forward(request, response);
    	}
    	else {
    		request.setAttribute("error", "Enter Valid Information");
    		rd=request.getRequestDispatcher("login.jsp");
    		rd.forward(request, response);
    	}
    	
    	
	}

}
