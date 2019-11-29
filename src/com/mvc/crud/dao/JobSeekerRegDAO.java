package com.mvc.crud.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mvc.crud.dao.DBDAO;
import com.mvc.crud.beans.JobBean;
public class JobSeekerRegDAO {
      static Connection con=null;
      static PreparedStatement pst=null;
      static ResultSet rs=null; 
	  static boolean flag=false;
      
      
	// ----------get-database-connection---------//
		/**
		 *
		 * @author : KAVYA
		 * @date : 14/11/2019
		 * @version: 1.0
		 * @purpose: set connection
		 * @param  :Connection
		 * @return : connection
		 * 
		 */
    public static Connection getDbConnection()throws SQLException{
      
    
		try	  {
				DBDAO.connect();
				con=DBDAO.getDbCon();
		   
	  }	catch(ClassNotFoundException  ex)		   {
			 ex.printStackTrace();
		}catch(SQLException e)		{
			e.printStackTrace();
		}
		return con;
    }
 // -------------------------------------------END--------------------------
 	// -----------------------------insert START------------------------------------------//
 	/**
 	 *
 	 * @author : KAVYA
 	 * @date : 14/11/2019
 	 * @version: 1.0
 	 * @purpose: insert
 	 * @param  :jobBean
 	 * @return : boolean
 	 * 
 	 */
    
    public static boolean insert(JobBean jobBean) throws SQLException{
       
        try{
            
            con=getDbConnection();
            pst=con.prepareStatement("insert into UserRegistration(u_fname,u_lname,u_gender,u_dob,u_address,u_phone,u_altphone,u_email,u_username,u_password) values(?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, jobBean.getUserFname());
            pst.setString(2, jobBean.getUserLname());
            pst.setString(3, jobBean.getUserGender()); 
            pst.setString(4, jobBean.getUserDob());
            pst.setString(5, jobBean.getUserAddress());
            pst.setString(6, jobBean.getUserPhone());
            pst.setString(7, jobBean.getUserAltPhone());
            pst.setString(8,jobBean.getUserEmail());
            pst.setString(9, jobBean.getUserName());
            pst.setString(10, jobBean.getUserPassword());
            
        pst.executeUpdate();
        flag=true;
    } catch(Exception e){
        e.printStackTrace();
    }
    return flag;
        
}
    // -------------------------------------------END--------------------------
 	// -----------------------------select job seeker START------------------------------------------//
 	/**
 	 *
 	 * @author : KAVYA
 	 * @date : 14/11/2019
 	 * @version: 1.0
 	 * @purpose: select job seeker
 	 * @param  :jobBean
 	 * @return : list
 	 * 
 	 */
    
    public static ArrayList<JobBean> selectJobSeeker(JobBean jobBean){
		ArrayList<JobBean> eb=new ArrayList<JobBean>();
		try{
			
			con=getDbConnection();
			pst=con.prepareStatement("select * from UserRegistration where u_username=?");
			//pst.setInt(1,loginBean.getId());
			pst.setString(1, jobBean.getUserName());
			
			rs=pst.executeQuery();
			while(rs.next()){
				jobBean=new JobBean();
				jobBean.setUserName(rs.getString("u_username"));
				jobBean.setUserPassword(rs.getString("u_password"));
				jobBean.setUid(rs.getString("u_id"));
				jobBean.setUserFname(rs.getString("u_fname"));
				jobBean.setUserLname(rs.getString("u_lname"));
				//System.out.println("id dao="+rs.getInt("u_id"));
				
				eb.add(jobBean);
				
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return eb;
		
	}
    
    
    // -------------------------------------------END--------------------------
 	// -----------------------------Select job seeker details START------------------------------------------//
 	/**
 	 *
 	 * @author : KAVYA
 	 * @date : 14/11/2019
 	 * @version: 1.0
 	 * @purpose: Select job seeker details
 	 * @param  :jobBean
 	 * @return : ArrayList
 	 * 
 	 */
    
    public static ArrayList<JobBean> selectJobSeekerDetailsApply(JobBean jobbean){
		ArrayList<JobBean> eb=new ArrayList<JobBean>();
		try{
			
			con=getDbConnection();
			pst=con.prepareStatement("select * from UserRegistration where u_username=?");
			//pst.setInt(1,loginBean.getId());
			pst.setString(1, jobbean.getUserName());
			
			rs=pst.executeQuery();
			while(rs.next()){
				jobbean=new JobBean();
				jobbean.setUserFname(rs.getString("u_fname"));
				jobbean.setUserLname(rs.getString("u_lname"));
				jobbean.setUserPhone(rs.getString("u_Phone"));
				jobbean.setUserEmail(rs.getString("u_email"));
				
				
				eb.add(jobbean);
				
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return eb;
		
	}
    // -------------------------------------------END--------------------------
 	// -----------------------------insert applied candidate START------------------------------------------//
 	/**
 	 *
 	 * @author : KAVYA
 	 * @date : 14/11/2019
 	 * @version: 1.0
 	 * @purpose: insert applied candidate
 	 * @param  :jobBean
 	 * @return : boolean
 	 * 
 	 */
    
    public static boolean insertAppliedCandidate(JobBean jobBean) throws SQLException{
       
        try{
            
            con=getDbConnection();
            pst=con.prepareStatement("insert into tbl_applied_candidate(c_name,c_email,c_company_name,c_post,c_phone) values(?,?,?,?,?)");
            pst.setString(1, jobBean.getUserFullname());
            pst.setString(2, jobBean.getUserEmail()); 
            pst.setString(3, jobBean.getCompname());
            pst.setString(4, jobBean.getPost());
            pst.setString(5, jobBean.getUserPhone());
    
            
        pst.executeUpdate();
        flag=true;
    } catch(Exception e){
        e.printStackTrace();
    }
    return flag;
        
}
 // -------------------------------------------END--------------------------
  	// -----------------------------insert feedback START------------------------------------------//
  	/**
  	 *
  	 * @author : KAVYA
  	 * @date : 14/11/2019
  	 * @version: 1.0
  	 * @purpose: insert feedback
  	 * @param  :jobBean
  	 * @return : boolean
  	 * 
  	 */
    public static boolean insertFeedback(JobBean jobBean) throws SQLException {

		try {

			con = getDbConnection();
			pst = con.prepareStatement("insert into tbl_feedback_admin(f_name,f_date,f_comment) values(?,?,?)");
			pst.setString(1, jobBean.getName());
			pst.setString(2, jobBean.getDate());
			pst.setString(3, jobBean.getFeedback());
			pst.executeUpdate();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

	}

    
    
    
    
    //-----------------------------------END-------------------------------------
}

