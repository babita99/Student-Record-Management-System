package Admin.Actions;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AdminDao.DaoFactory;
import Bean_package.ResultBean;


@WebServlet("/ResultAction")
public class ResultAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentid,course,foc,c,java,os,ds,compiler,swengineering;
		DaoFactory dao=DaoFactory.getDao();
		RequestDispatcher rd;
		
		studentid  =request.getParameter("sid");
		course =request.getParameter("course");
		foc =request.getParameter("foc");
		c =request.getParameter("c");
		java =request.getParameter("java");
		os =request.getParameter("os");
		ds =request.getParameter("ds");
		compiler =request.getParameter("compiler");
		swengineering =request.getParameter("sw");
		
		if(dao.checkResult(studentid)) {
			request.setAttribute("error", "This student marks is already upload");
 		rd=request.getRequestDispatcher("resultsheet.jsp");
 		rd.forward(request, response);
			
		}
		else {
		
		
		ResultBean result=new ResultBean();
		result.setStudentid(studentid);
		result.setCourse(course);
		result.setFoc(foc);
		result.setC(c);
		result.setJava(java);
		result.setOs(os);
		result.setDs(ds);
		result.setCompiler(compiler);
		result.setSwengineering(swengineering);
		
		
	    if(dao.Resultmake(result)) {
				request.setAttribute("error", "Result is upload succesfully");
	    		rd=request.getRequestDispatcher("resultsheet.jsp");
	    		rd.forward(request, response);
	    	}
    	else
    	{
    		request.setAttribute("error", "This student ID is  not exist in the system");
    		rd= request.getRequestDispatcher("resultsheet.jsp");
    		rd.forward(request, response);
    	}
		
		
	}


}
}
