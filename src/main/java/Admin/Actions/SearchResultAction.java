package Admin.Actions;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AdminDao.DaoFactory;
import Bean_package.ResultBean;
import Bean_package.StudentBean;
@WebServlet("/SearchResultAction")
public class SearchResultAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid;
		RequestDispatcher  rd; 
		
		sid=request.getParameter("sid");
		
		ResultBean rs=new ResultBean();
		rs.setStudentid(sid);
		
		DaoFactory dao=DaoFactory.getDao();
		rs=dao.GetResultbyID(rs);
		if(rs!=null)
    	{
			HttpSession session=request.getSession(true);
    		session.setAttribute( "result", rs);
    		rd=request.getRequestDispatcher("viewResult.jsp");
    		rd.forward(request, response);
    	}
    	else {
    		request.setAttribute("error", "Enter Valid Information");
    		rd=request.getRequestDispatcher("Blank.jsp");
    		rd.forward(request, response);
    	}
    	
		
		
		
		

}
}
