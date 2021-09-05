package AdminDao;

import java.util.ArrayList;

import javax.swing.AbstractAction;

import Bean_package.FacultyBean;
import Bean_package.ResultBean;
import Bean_package.StudentBean;
import Bean_package.User_infoBean;


public abstract class DaoFactory
{
public static DaoFactory getDao()
{
	DaoFactory dao=new SqlDao() ;
	
	return dao;
}
public abstract boolean CheckEMail(String email);
public abstract boolean AdminRegister(User_infoBean bean);
public abstract User_infoBean checklogin(User_infoBean user_infoBean);

public abstract boolean AddStudent(StudentBean studentBean);
public abstract ArrayList<StudentBean> getAllStudents();
public abstract StudentBean getStudent(String id);
public abstract boolean EditStudent(StudentBean studentBean);
public abstract boolean DeleteStudent(String id);

public abstract boolean StudentAttandance(StudentBean atta);
public abstract ArrayList<StudentBean> getAllattandance();
public abstract boolean CheckStudentEMail(String studentid);
public abstract  boolean checkStudentAttandance(String studentid);
public abstract boolean deleteAttandance(String id);
public  abstract StudentBean GetattandacebyID(StudentBean re);



public abstract boolean FacultyAdd(FacultyBean fac);
public abstract ArrayList<FacultyBean> getAllFaculty();
public abstract FacultyBean getFaculty(String id);
public abstract boolean EditFaculty(FacultyBean fac);
public abstract boolean DeleteFaculty(String id);



public abstract boolean Resultmake(ResultBean bean);
public abstract ArrayList<ResultBean> getAllresult();

public  abstract ResultBean GetResultbyID(ResultBean re);
public abstract  boolean checkResult(String studentid);
public abstract boolean deleteresult(String id);


//count query 

public abstract int countStudents();
public abstract int countFaculty();
	



}
