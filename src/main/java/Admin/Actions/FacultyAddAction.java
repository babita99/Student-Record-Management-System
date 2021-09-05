package Admin.Actions;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AdminDao.DaoFactory;
import Bean_package.FacultyBean;

@WebServlet("/FacultyAddAction")
public class FacultyAddAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String facid,name,email,dob,address,contact,gender,password,qualification,experience;	
		RequestDispatcher rd;
    	DaoFactory dao=DaoFactory.getDao();

    	facid    = request.getParameter("facid");
    	name = request.getParameter("name");
    	email = request.getParameter("email");
    	dob = request.getParameter("dob");
    	address = request.getParameter("address");
    	contact = request.getParameter("contact");
    	gender = request.getParameter("gender");
    	password = request.getParameter("password");
    	qualification = request.getParameter("Qualification");
    	experience= request.getParameter("Experience");
    	
    	
    	FacultyBean facbean=new FacultyBean();
    	facbean.setFacid(facid);
    	facbean.setName(name);
    	facbean.setEmail(email);
    	facbean.setDob(dob);
    	facbean.setContact(contact);
    	facbean.setPassword(password);
    	facbean.setQualification(qualification);
    	facbean.setExperience(experience);
    	facbean.setAddress(address);
    	facbean.setGender(gender);
    	
    	boolean f=dao.FacultyAdd(facbean);
    	if(f) {
    		rd=request.getRequestDispatcher("FacultyShow.jsp");
    		rd.forward(request, response);
    	}
    	else
    	{
    		request.setAttribute("error", "try after sometime");
    		rd= request.getRequestDispatcher("FacultyAdd.jsp");
    		rd.forward(request, response);
    	}

	}

}
