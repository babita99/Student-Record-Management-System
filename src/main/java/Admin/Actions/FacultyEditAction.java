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

@WebServlet("/FacultyEditAction")
public class FacultyEditAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String facid,name,email,dob,address,contact,gender,password,qualification,experience,id;	
		RequestDispatcher rd;
		
    	DaoFactory dao=DaoFactory.getDao();
         id=request.getParameter("id");
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
    	facbean.setId(id);
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
    	
    	
    	
    	dao=DaoFactory.getDao();
		boolean f =dao.EditFaculty(facbean);
		if(f) {
			request.setAttribute("error", "faculty information updated");
			rd=request.getRequestDispatcher("FacultyShow.jsp");
			rd.forward(request, response);
		}else {
			request.setAttribute("error", " Error occur ,Try after sometime");
			rd=request.getRequestDispatcher("FacultyEdit.jsp");
			rd.forward(request, response);
			
		}
	}

}
