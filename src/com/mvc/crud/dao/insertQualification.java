package com.mvc.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mvc.crud.beans.JobBean;

//-----------------------------------------------------------------
/**
    *
    * @author Megha
    * @date:15-11-2019
    * @version 1.0
    * @purpose: Close connection 
    * @param  : Nothing
	* @return : Nothing
    */
public class insertQualification {
	static Connection con = null;
	static PreparedStatement pst = null;
	static ResultSet rs = null;
	static boolean flag = false;


	// ------------------Connection start here----------------------------/**
    /*
    * @author :Megha
    * @date   :15-11-2019
    * @version: 1.0
    * @purpose: Close connection 
    * @param  : Nothing
    * @throws :Exception in case of closing connection
	* @return : Connection
    */
	
	public static Connection getDbConnection() throws SQLException {

		try {
			DBDAO.connect();
			con = DBDAO.getDbCon();

		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	// -------------------Connection ends here-----------------------------------------
	//--------------------------Insert start here---------------------------------------------

	/**
    *
    * @author :Megha
    * @date   :15-11-2019
    * @version: 1.0
    * @purpose: inserting qualifications 
    * @param  : Nothing
    * @throws :Exception in case of closing connection
	* @return : boolean
    */
	public static boolean insertQuali(JobBean jobbean) throws SQLException {

		try {

			con = getDbConnection();
			pst = con.prepareStatement(
					"insert into tbl_qualification (u_id,qualification,stream,experience,language,additional_skills,post,photo) values(?,?,?,?,?,?,?,?)");
			pst.setString(1,jobbean.getUid());
			pst.setString(2, jobbean.getQualification());
			pst.setString(3, jobbean.getStream());
			pst.setString(4, jobbean.getExperience());
			pst.setString(5, jobbean.getLanguage());
			pst.setString(6, jobbean.getAdditionalskills());
			pst.setString(7, jobbean.getPost());
			pst.setString(8, jobbean.getImage());
			

			pst.executeUpdate();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	//----------------------------Insert ends here-------------------------------------------
	}
	
//	public static ArrayList<JobBean> selectPost(JobBean jobBean){
//		ArrayList<JobBean> eb=new ArrayList<JobBean>();
//		try{
//			
//			con=getDbConnection();
//			pst=con.prepareStatement("select * from tbl_qualification  where u_username=?");
//			//pst.setInt(1,loginBean.getId());
//			pst.setString(1, jobBean.getUserName());
//			
//			rs=pst.executeQuery();
//			while(rs.next()){
//				jobBean=new JobBean();
//				jobBean.setUserName(rs.getString("u_username"));
//				jobBean.setUserPassword(rs.getString("u_password"));
//				
//				eb.add(jobBean);
//				
//			}
//			
//		}catch(SQLException e){
//			e.printStackTrace();
//		}
//		return eb;
//		
//	}
	// -------------------Connection ends here-----------------------------------------

	//--------------------------view candidate start here---------------------------------------------
	/**
    *
    * @author :Megha
    * @date   :15-11-2019
    * @version: 1.0
    * @purpose: view candidates profile
    * @param  : Nothing
    * @throws :Exception in case of closing connection
	* @return : arrayList
    */
	 public static ArrayList<JobBean> viewCandidateProfile(JobBean jobBean) throws SQLException{
		  	
		  	ArrayList<JobBean> jb=new ArrayList<JobBean>();
		  

		      try{
		    	  
		    	  System.out.println("user id="+jobBean.getUid());
		          con=getDbConnection();
		      pst=con.prepareStatement("select * from userregistration u,tbl_qualification q where q.u_id=? and u.u_id=?");
		    pst.setString(1, jobBean.getUid());
		    pst.setString(2, jobBean.getUid());
		    
		     rs=pst.executeQuery();
		      while(rs.next()){
		    	  jobBean=new JobBean();
		    	  jobBean.setUserFname(rs.getString("u_fname"));
		    	  jobBean.setUserLname(rs.getString("u_lname"));
		    	  jobBean.setUserGender(rs.getString("u_gender"));
		    	  jobBean.setUserDob(rs.getString("u_dob"));
		    	  jobBean.setUserAddress(rs.getString("u_address"));
		    	  jobBean.setUserPhone(rs.getString("u_phone"));
		    	  jobBean.setUserAltPhone(rs.getString("u_altphone"));
		    	  jobBean.setUserEmail(rs.getString("u_email"));
		    	  jobBean.setQualification(rs.getString("qualification"));
		    	  jobBean.setStream(rs.getString("stream"));
		    	  jobBean.setLanguage(rs.getString("language"));
		    	  jobBean.setExperience(rs.getString("experience"));
		    	  jobBean.setPost(rs.getString("post"));
		    	  jobBean.setImage(rs.getString("photo"));
		    	  
		    	  
		      	
		      	jb.add(jobBean);
		      }
		  } catch(Exception e){
		      e.printStackTrace();
		  }
		  return jb;
		      
		  } 
	 
	 
	 //---------------------END---------------------------------//
	//--------------------------update candidate start here---------------------------------------------
		/**
	    *
	    * @author :Megha
	    * @date   :15-11-2019
	    * @version: 1.0
	    * @purpose: update candidates profile
	    * @param  : Nothing
	    * @throws :Exception in case of closing connection
		* @return : boolean
	    */
	 public static boolean updateCandidateProfile(JobBean jobBean) throws SQLException{
	        
	        try{
	            String id=jobBean.getUid();
	            System.out.println("usereee ninte id ooduthu="+id);
	            con=getDbConnection();
	        pst=con.prepareStatement("update tbl_qualification  set qualification=?,experience=?,language=? where u_id=?");
	        pst.setString(1, jobBean.getQualification()); 
	        pst.setString(2, jobBean.getExperience());
	        pst.setString(3, jobBean.getLanguage());
	        pst.setString(4, jobBean.getUid());
	        pst.executeUpdate();
	        flag=true;
	    } catch(Exception e){
	        e.printStackTrace();
	    }
	    return flag;
	        
	}
//------------------------------------------------ENDS-------------------------------------------------
}
