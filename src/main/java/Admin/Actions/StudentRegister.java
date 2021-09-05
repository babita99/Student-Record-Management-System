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


@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		DaoFactory dao=DaoFactory.getDao();
		String studentid,stitle,sfanem,slname,ftitle,ffname,flname,gender,dob,phone,email,password,address,
		country,addmissiondate,coursename,coursestream,semester,additioninfo;
		
		studentid  =request.getParameter("studentid");
		stitle =request.getParameter("stitle");
		sfanem =request.getParameter("sfanem"); 
		slname=request.getParameter("slname");
		ftitle=request.getParameter("ftitle");
		ffname=request.getParameter("ffname");
		flname=request.getParameter("flname");
		gender=request.getParameter("gender");
		dob=request.getParameter("dob");
		phone=request.getParameter("phone");
		email=request.getParameter("email");
		password=request.getParameter("password");
		address=request.getParameter("address");
		country=request.getParameter("country");
		addmissiondate=request.getParameter("addmissiondate");
		coursename=request.getParameter("coursename");
		coursestream=request.getParameter("coursestream");
		semester=request.getParameter("semester");
		additioninfo=request.getParameter("additioninfo");
		
		if(dao.CheckStudentEMail(studentid)) {
			request.setAttribute("error", "This student is already Exist");
    		rd=request.getRequestDispatcher("StudentRegister.jsp");
    		rd.forward(request, response);
			
		}
		else {
		
		StudentBean student=new StudentBean();
		
		student.setStudentid(studentid);
		student.setStitle(stitle);
		student.setSfanem(sfanem);
		student.setSlname(slname);
		student.setFtitle(ftitle);
		student.setFfname(ffname);
		student.setFlname(flname);
		student.setGender(gender);
		student.setDob(dob);
		student.setPhone(phone);
		student.setEmail(email);
		student.setPassword(password);
		student.setAdditioninfo(additioninfo);
		student.setAddress(address);
		student.setCountry(country);
		student.setAddmissiondate(addmissiondate);
		student.setCoursename(coursename);
		student.setCoursestream(coursestream);
		student.setSemester(semester);
		
		boolean f =dao.AddStudent(student);
		
		if(f) 
		{
			request.setAttribute("error", "data is insert");
    		rd=request.getRequestDispatcher("ShowStudent.jsp");
    		rd.forward(request, response);
    	}
    	else
    	{
    		request.setAttribute("error", "Try after sometime");
    		rd= request.getRequestDispatcher("StudentRegister.jsp");
    		rd.forward(request, response);
    	}
		
		
		}	
		
	}

}
