package Admin.Actions;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AdminDao.DaoFactory;
import Bean_package.StudentBean;

@WebServlet("/StudentAddAttandance")
public class StudentAddAttandance extends HttpServlet {
private static final long serialVersionUID = 1L;
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String sid,date,status,sname;
	RequestDispatcher rd;
	DaoFactory dao=DaoFactory.getDao();
	 sid=request.getParameter("sid");
	 sname =request.getParameter("sname");
	 date=request.getParameter("date");
	 status= request.getParameter("status");
	 
	 if(dao.checkStudentAttandance(sid)) {
			request.setAttribute("error", "This  Attandance is already Mark");
 		rd=request.getRequestDispatcher("Addatandance.jsp");
 		rd.forward(request, response);
			
		}
		else {
		
	 
				  StudentBean s=new StudentBean();
				 s.setStudentid(sid);
				 s.setSfanem(sname);
				 s.setDate(date);
				 s.setStatus(status);
				 
				 
				 boolean f= dao.StudentAttandance(s);
		
	        if(f) {
			request.setAttribute("error", "Attandance is Mark");
    		rd=request.getRequestDispatcher("Addatandance.jsp");
    		rd.forward(request, response);
    	
	 }
    	else
    	{
    		request.setAttribute("error", "Student is not avilable");
    		rd= request.getRequestDispatcher("Addatandance.jsp");
    		rd.forward(request, response);
    	}
	}
}
}


