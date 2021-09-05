 package AdminDao;

import java.sql.ResultSet;
import java.util.ArrayList;

import Bean_package.FacultyBean;
import Bean_package.ResultBean;
import Bean_package.StudentBean;
import Bean_package.User_infoBean;

public class SqlDao extends DaoFactory {
	java.sql.Connection con;
	  java.sql.Statement st;
	  ResultSet rs;
	  String query;
	  boolean flag=false;
	  int res=0;
	  
	  
	
	public boolean CheckEMail(String email) {
try {

	con=DbConnection.getConnection();
	st=con.createStatement();
	query= "select email from student.user_info where email='"+email+"'";
		rs=st.executeQuery(query);
		if(rs.next())
			flag=true;

} catch (Exception e) {
	e.printStackTrace();
	
}
		return flag;
	}



	@Override
	public boolean AdminRegister(User_infoBean bean) 
{
	try {
con=DbConnection.getConnection();
st=con.createStatement();
query= "insert into student.user_info(name,email,password,status,role)values"
+ "('"+bean.getName()+"','"+bean.getEmail()+"','"+bean.getPass()+"','active','"+bean.getRole()+"')";
int i =st.executeUpdate(query);
		if(i>0)
			flag=true;
} catch (Exception e) {
	
}
return flag;
}



	@Override
	public User_infoBean checklogin(User_infoBean user_infoBean) {
		User_infoBean info=null;
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select * from student.user_info where email='"+user_infoBean.getEmail()+"' and password='"+user_infoBean.getPass()+"' and status='active'";
			rs=st.executeQuery(query);
		if(rs.next()) {
		     info=new User_infoBean();
			info.setEmail(rs.getString("email"));
			info.setId(rs.getString("id"));
			info.setName(rs.getString("name"));
			info.setStatus(rs.getString("status"));
			info.setRole(rs.getString("role"));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
				
			}
			return info;
			}




	@Override
	public boolean AddStudent(StudentBean studentBean) {
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
		query="insert into student.student(studentid,stitle,sfanem,slname,ftitle,ffname,flname,gender,dob,phone,email,password,address,country,addmissiondate,coursename,coursestream,semester,additioninfo)values"
				+ "('"+studentBean.getStudentid()+"', '"+studentBean.getStitle()+"', '"+studentBean.getSfanem()+"',  '"+studentBean.getSlname()+"',  '"+studentBean.getFtitle()+"','"+studentBean.getFfname()+"',"
						+ " '"+studentBean.getFlname()+"',  '"+studentBean.getGender()+"',  '"+studentBean.getDob()+"',  '"+studentBean.getPhone()+"',  '"+studentBean.getEmail()+"',"
						+ " '"+studentBean.getPassword()+"', '"+studentBean.getAddress()+"', '"+studentBean.getCountry()+"', '"+studentBean.getAddmissiondate()+"', '"+studentBean.getCoursename()+"', '"+studentBean.getCoursestream()+"', '"+studentBean.getSemester()+"', '"+studentBean.getAdditioninfo()+"')";
			int i =st.executeUpdate(query);
			System.out.println("data insert in mysql");
			if(i>0)
				flag=true;
			} catch (Exception e) {
				System.out.println(e);
				
			}
			return flag;
			}



	@Override
	public ArrayList<StudentBean> getAllStudents() {
		ArrayList<StudentBean> stulist=new ArrayList<StudentBean>();
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select * from student.student order by id desc ";
			rs=st.executeQuery(query);
			while(rs.next()) {
			StudentBean stu=new StudentBean();
			stu.setId(rs.getString("id"));
			stu.setStudentid(rs.getString("studentid"));
			stu.setSfanem(rs.getString("sfanem"));
			stu.setSlname(rs.getString("slname"));
			stu.setEmail(rs.getString("email"));
			stu.setCoursename(rs.getString("coursename"));
			stu.setCoursestream(rs.getString("coursestream"));
			stu.setSemester(rs.getString("semester"));
			
			stulist.add(stu);
				
			}
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("error in this query");
				
			}
		return stulist;
	}



	@Override
	public StudentBean getStudent(String id) {
		StudentBean stu=null;
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select * from student.student where id="+id;
			rs=st.executeQuery(query);
			if(rs.next()) 
			{
			stu=new StudentBean();
			
			stu.setStudentid(rs.getString("studentid"));
			stu.setSfanem(rs.getString("sfanem"));
			stu.setSlname(rs.getString("slname"));
			stu.setEmail(rs.getString("email"));
		
			stu.setFtitle(rs.getString("ftitle"));
			stu.setFfname(rs.getString("ffname"));
			stu.setFlname(rs.getString("flname"));
			stu.setGender(rs.getString("gender"));
			stu.setDob(rs.getString("dob"));
			stu.setPhone(rs.getString("phone"));
			stu.setPassword(rs.getString("password"));
			stu.setAddress(rs.getString("address"));
			stu.setCountry(rs.getString("country"));
			stu.setAddmissiondate(rs.getString("addmissiondate"));
			stu.setCoursename(rs.getString("coursename"));
			stu.setCoursestream(rs.getString("coursestream"));
			stu.setSemester(rs.getString("semester"));
			stu.setAdditioninfo(rs.getString("additioninfo"));
				
			}
			} catch (Exception e) {
				System.out.println(e);
				
			}
		return stu;
	}



	@Override
	public boolean EditStudent(StudentBean studentBean) {
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query="update student.student set studentid='"+studentBean.getStudentid()+"',stitle='"+studentBean.getStitle()+"',sfanem='"+studentBean.getSfanem()+"'"
					+ ",slname='"+studentBean.getSlname()+"',ftitle='"+studentBean.getFtitle()+"'"
							+ ",ffname='"+studentBean.getFfname()+"', flname='"+studentBean.getFlname()+"'"
									+ ",gender='"+studentBean.getGender()+"',dob='"+studentBean.getDob()+"'"
											+ ",phone='"+studentBean.getPhone()+"',email='"+studentBean.getEmail()+"'"
													+ ",password='"+studentBean.getPassword()+"',address='"+studentBean.getAddress()+"'"
															+ ",country='"+studentBean.getCountry()+"',addmissiondate='"+studentBean.getAddmissiondate()+"'"
																	+ ",coursename='"+studentBean.getCoursename()+"',"
																		+ "coursestream='"+studentBean.getCoursestream()+"'"
																		+ ",semester='"+studentBean.getSemester()+"'"
																		+ ",additioninfo='"+studentBean.getAdditioninfo()+"' where id="+studentBean.getId()+"";
			int i =st.executeUpdate(query);
					if(i>0)
						flag=true;
			} catch (Exception e) {
				System.out.println(e);
				
			}
			return flag;
			}



	@Override
	public boolean DeleteStudent(String id) {
		
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query="delete  from student.student where id= "+id;
			int  i =st.executeUpdate(query);
					if(i>0)
						flag=true;
			} catch (Exception e) {
				System.out.println(e);
				
			}
			return flag;
			}



	@Override
	public boolean FacultyAdd(FacultyBean fac) 
		{
			try {
		con=DbConnection.getConnection();
		st=con.createStatement();
		query= "insert into student.faculty(facid,name,email,dob,address,contact,gender,password,qualification,experience)values"
				+ "('"+fac.getFacid()+"','"+fac.getName()+"','"+fac.getEmail()+"','"+fac.getDob()+"','"+fac.getAddress()+"','"+fac.getContact()+"','"+fac.getGender()+"','"+fac.getPassword()+"','"+fac.getQualification()+"','"+fac.getExperience()+"')";
		int i =st.executeUpdate(query);
		if(i>0)
					flag=true;
		} catch (Exception e) {
			
		}
		return flag;
		}



	@Override
	public ArrayList<FacultyBean> getAllFaculty() {
		ArrayList<FacultyBean> faclist=new ArrayList<FacultyBean>();
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select * from student.faculty order by id desc ";
			rs=st.executeQuery(query);
			while(rs.next()) {
			FacultyBean fac=new FacultyBean();
			fac.setId(rs.getString("id"));
			fac.setDob(rs.getString("dob"));
			fac.setEmail(rs.getString("email"));
			fac.setAddress(rs.getString("address"));
			fac.setName(rs.getString("name"));
			fac.setDob(rs.getString("dob"));
			fac.setFacid(rs.getString("facid"));
			fac.setContact(rs.getString("contact"));
			
		faclist.add(fac);
				
			}
			} catch (Exception e) {
				
			}
		return faclist;
	}



	@Override
	public FacultyBean getFaculty(String id) {
		FacultyBean fac=null;
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select * from student.faculty where id="+id;
			rs=st.executeQuery(query);
			if(rs.next()) 
			{
			fac=new FacultyBean();
			fac.setId(rs.getString("id"));
			fac.setFacid(rs.getString("facid"));
			fac.setAddress(rs.getString("address"));
			fac.setDob(rs.getString("dob"));
			fac.setEmail(rs.getString("email"));
		    fac.setName(rs.getString("name"));
			fac.setContact(rs.getString("contact"));
			fac.setPassword(rs.getString("password"));
			fac.setGender(rs.getString("gender"));
			fac.setQualification(rs.getString("qualification"));
			fac.setExperience(rs.getString("experience"));
			
			
				
			}
			} catch (Exception e) {
				
			}
		return fac;
	}



	@Override
	public boolean EditFaculty(FacultyBean fac) {
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query="update student.faculty set facid='"+fac.getFacid()+"',name='"+fac.getName()+"',email='"+fac.getEmail()+"',dob='"+fac.getDob()+"',address='"+fac.getAddress()+"',contact='"+fac.getContact()+"',gender='"+fac.getGender()+"',password='"+fac.getPassword()+"',qualification='"+fac.getQualification()+"',experience='"+fac.getExperience()+"' where id="+fac.getId();
			int i =st.executeUpdate(query);
					if(i>0)
						flag=true;
			} catch (Exception e) {
				
			}
			return flag;
			}



	@Override
	public boolean DeleteFaculty(String id) {
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query="delete  from student.faculty where id= "+id;
			int  i =st.executeUpdate(query);
					if(i>0)
						flag=true;
			} catch (Exception e) {
				
			}
			return flag;
			}



	@Override
	public boolean Resultmake(ResultBean bean) {
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "insert into student.result(studentid,course,foc,c,java,os,ds,compiler, engineering)values"
					+ "('"+bean.getStudentid()+"','"+bean.getCourse()+"','"+bean.getFoc()+"','"+bean.getC()+"','"+bean.getJava()+"','"+bean.getOs()+"','"+bean.getDs()+"','"+bean.getCompiler()+"','"+bean.getSwengineering()+"')";
			int i =st.executeUpdate(query);
			if(i>0)
			flag=true;
			} catch (Exception e) {
				System.out.println(e);
			}
			return flag;
			}



	@Override
	public ArrayList<ResultBean> getAllresult() {
		ArrayList<ResultBean> re =new ArrayList<ResultBean>();
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select * from student.result order by id asc ";
			rs=st.executeQuery(query);
			while(rs.next()) {
			ResultBean r=new ResultBean();
			r.setId(rs.getString("id"));
			r.setStudentid(rs.getString("studentid"));
			r.setCourse(rs.getString("course"));
			r.setFoc(rs.getString("foc"));
			r.setC(rs.getString("c"));
			r.setJava(rs.getString("java"));
			r.setOs(rs.getString("os"));
			r.setCompiler(rs.getString("compiler"));
			r.setDs(rs.getString("ds"));
			r.setSwengineering(rs.getString("engineering"));
			
			
		re.add(r);
				
			}
			} catch (Exception e) {
				System.out.println(e);
				
			}
		return re;
	}



	@Override
	public boolean StudentAttandance(StudentBean atta) {
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "insert into student.studentattandance(sid,sname,date,status)values"
					+ "('"+atta.getStudentid()+"','"+atta.getSfanem()+"','"+atta.getDate()+"','"+atta.getStatus()+"')";
			int i =st.executeUpdate(query);
			if(i>0)
			flag=true;
			} catch (Exception e) {
				System.out.println(e);
			}
			return flag;
			}



	@Override
	public ArrayList<StudentBean> getAllattandance() {
		ArrayList<StudentBean> stulist=new ArrayList<StudentBean>();
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select * from student.studentattandance order by id asc ";
			rs=st.executeQuery(query);
			while(rs.next()) {
			StudentBean stu=new StudentBean();
		     
			stu.setId(rs.getString("id"));
			stu.setStudentid(rs.getString("sid"));
			stu.setSfanem(rs.getString("sname"));
			stu.setStatus(rs.getString("status"));
			stu.setDate(rs.getString("date"));
			
			stulist.add(stu);
				
			}
			} catch (Exception e) {
				System.out.println(e);
				
			}
		return stulist;
	}



	


	@Override
	public ResultBean GetResultbyID(ResultBean re) {
		ResultBean r=null;
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select * from student.result where studentid='"+re.getStudentid()+"' ";
			rs=st.executeQuery(query);
		if(rs.next()) {
		    r=new ResultBean();
		    r.setStudentid(rs.getString("studentid"));
			r.setCourse(rs.getString("course"));
			r.setFoc(rs.getString("foc"));
			r.setC(rs.getString("c"));
			r.setJava(rs.getString("java"));
			r.setOs(rs.getString("os"));
			r.setCompiler(rs.getString("compiler"));
			r.setDs(rs.getString("ds"));
			r.setSwengineering(rs.getString("engineering"));
			
			
			
				
			}
		
		}
		catch (Exception e) {
			System.out.println(e);
				
			}
			return r;
			}



	@Override
	public int countStudents() {
		try {
			con = DbConnection.getConnection();
			st = con.createStatement();
			query="select count(studentid) from student.student ";
			rs=st.executeQuery(query);
			if(rs.next())
				res = rs.getInt(1);
			st.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}



	@Override
	public int countFaculty() {
		try {
			con = DbConnection.getConnection();
			st = con.createStatement();
			query="select count(facid) from student.faculty ";
			rs=st.executeQuery(query);
			if(rs.next())
				res = rs.getInt(1);
			st.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}



	@Override
	public boolean CheckStudentEMail(String studentid) {
		try {

			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select studentid from student.student where studentid='"+studentid+"'";
				rs=st.executeQuery(query);
				if(rs.next())
					flag=true;

		} catch (Exception e) {
			e.printStackTrace();
			
		}
				return flag;
			}



	@Override
	public boolean checkStudentAttandance(String studentid) {
		try {

			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select sid from student.studentattandance where sid='"+studentid+"' ";
				rs=st.executeQuery(query);
				if(rs.next())
					flag=true;

		} catch (Exception e) {
			System.out.println(e);
			
		}
				return flag;
			}



	@Override
	public boolean deleteAttandance(String id) {
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query="delete  from student.studentattandance where id= "+id;
			int  i =st.executeUpdate(query);
					if(i>0)
						flag=true;
			} catch (Exception e) {
				System.out.println(e);
				
			}
			return flag;
			}



	@Override
	public boolean checkResult(String studentid) {
		try {

			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select studentid from student.result where studentid='"+studentid+"'";
				rs=st.executeQuery(query);
				if(rs.next())
					flag=true;

		} catch (Exception e) {
			e.printStackTrace();
			
		}
				return flag;
			}



	@Override
	public boolean deleteresult(String id) {
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query="delete  from student.result where id= "+id;
			int  i =st.executeUpdate(query);
					if(i>0)
						flag=true;
			} catch (Exception e) {
				System.out.println(e);
				
			}
			return flag;
			}



	@Override
	public StudentBean GetattandacebyID(StudentBean re) {
		StudentBean r=null;
		try {
			con=DbConnection.getConnection();
			st=con.createStatement();
			query= "select * from student.studentattandance where sid='"+re.getStudentid()+"' ";
			rs=st.executeQuery(query);
		if(rs.next()) {
		    r=new StudentBean();
		    r.setStudentid(rs.getString("sid"));
		    r.setFfname(rs.getString("sname"));
		    r.setDate(rs.getString("date"));
		    r.setStatus(rs.getString("status"));
			
			
			
				
			}
		
		}
		catch (Exception e) {
			System.out.println(e);
				
			}
			return r;
			}

	



}

	




		

	

	

				

				
				
	






	

	
	
	
 




	