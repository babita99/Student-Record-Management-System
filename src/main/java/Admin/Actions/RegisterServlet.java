package Admin.Actions;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AdminDao.DaoFactory;
import Bean_package.User_infoBean;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	String name,email,pass,cpass,status,role;
    	RequestDispatcher rd;
    	DaoFactory dao=DaoFactory.getDao();

    
    	name   = request.getParameter("name");
    	email = request.getParameter("email");
    	pass   = request.getParameter("pass");
    	cpass=  request.getParameter("cpass");
    	status   = request.getParameter("status");
    	role    = request.getParameter("role");
    	
    	
    	if(!pass.equals(cpass)) {
    		request.setAttribute("error", "Password and Confirm password not match");
    		rd=request.getRequestDispatcher("Signup.jsp");
    		rd.forward(request, response);
    		
    	} else if(dao.CheckEMail(email)) {
    		request.setAttribute("error", "Email Already Exist");
		rd=request.getRequestDispatcher("Signup.jsp");
		rd.forward(request, response);
    	}
    	else {
    
    	User_infoBean user=new User_infoBean();
    	user.setName(name);
    	user.setEmail(email);
    	user.setPass(pass);
    	user.setCpass(cpass);
    	user.setStatus(status);
    	user.setRole(role);


    	boolean f=dao.AdminRegister(user);
    	if(f) {
    		request.setAttribute("error", "User is added successfully");
    		rd=request.getRequestDispatcher("Signup.jsp");
    		rd.forward(request, response);
    	}
    	else
    	{
    		request.setAttribute("error", "Try After sometime");
    		rd= request.getRequestDispatcher("Signup.jsp");
    		rd.forward(request, response);
    	}


    	}
    		}

    	}
