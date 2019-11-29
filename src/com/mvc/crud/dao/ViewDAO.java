package com.mvc.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mvc.crud.beans.*;

public class ViewDAO {
	static Connection con = null;
	static PreparedStatement pst = null;
	static ResultSet rs = null;
	static boolean flag = false;
	// ----------get-database-connection---------//
		/**
		 *
		 * @author : KAVYA
		 * @date : 14/11/2019
		 * @version: 1.0
		 * @purpose: set connection
		 * @param :
		 *            Connection
		 * @return : connection
		 * 
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
	
	  	// -----------------------------view company profile START------------------------------------------//
	  	/**
	  	 *
	  	 * @author : KAVYA
	  	 * @date : 14/11/2019
	  	 * @version: 1.0
	  	 * @purpose: view company profile
	  	 * @param  :jobBean
	  	 * @return : ArrayList
	  	 * 
	  	 */
	public static ArrayList<JobBean> viewCompanyProfile(JobBean jobBean) throws SQLException {

		ArrayList<JobBean> jb = new ArrayList<JobBean>();

		try {

			// System.out.println("user id="+jobBean.getUid());
			con = getDbConnection();
			pst = con.prepareStatement("select distinct rd_name from tbl_recruiter_description u,tbl_qualification q where q.post=? and u.rd_post=? and q.post=u.rd_post");
			pst.setString(1, jobBean.getPost());
			pst.setString(2, jobBean.getPost());
			rs = pst.executeQuery();
			while(rs.next()){
				jobBean=new JobBean();
				jobBean.setCompname(rs.getString("rd_name"));
				jb.add(jobBean);
				
			}	
			for(JobBean ew:jb){
				System.out.println(ew.getCompname());
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return jb;
		
	}
	// -------------------------------------------END--------------------------
	  	// -----------------------------select company by id START------------------------------------------//
	  	/**
	  	 *
	  	 * @author : KAVYA
	  	 * @date : 14/11/2019
	  	 * @version: 1.0
	  	 * @purpose: selecting company
	  	 * @param  :jobBean
	  	 * @return : arrayList
	  	 * 
	  	 */
	
	
	public static ArrayList<JobBean> selectCompanyId(JobBean jobBean) throws SQLException {

		ArrayList<JobBean> jb = new ArrayList<JobBean>();

		try {

			// System.out.println("user id="+jobBean.getUid());
			con = getDbConnection();
			pst = con.prepareStatement("select * from tbl_recruiter_registration");
			pst.setString(1, jobBean.getPost());
			pst.setString(2, jobBean.getPost());
			rs = pst.executeQuery();
			while(rs.next()){
				jobBean=new JobBean();
				jobBean.setCompname(rs.getString("rd_name"));
				jb.add(jobBean);
				
			}	
			for(JobBean ew:jb){
				System.out.println(ew.getCompname());
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return jb;
		
	}

	// -------------------------------------------END--------------------------
	  	// -----------------------------view candidate post START------------------------------------------//
	  	/**
	  	 *
	  	 * @author : KAVYA
	  	 * @date : 14/11/2019
	  	 * @version: 1.0
	  	 * @purpose: view candidate
	  	 * @param  :jobBean
	  	 * @return : ArrayList
	  	 * 
	  	 */
	
	public static ArrayList<JobBean> viewCandidatePost(JobBean jobBean) throws SQLException {

		ArrayList<JobBean> jb = new ArrayList<JobBean>();

		try {

			 System.out.println("user id="+jobBean.getUid());
			con = getDbConnection();
			pst = con.prepareStatement("select * from tbl_qualification where u_id=?");
			pst.setString(1, jobBean.getUid());
			rs = pst.executeQuery();
			while(rs.next()){
				jobBean=new JobBean();
				jobBean.setPost(rs.getString("post"));
				jb.add(jobBean);
				
			}	
			
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return jb;
		
	}
	//---------------------------END--------------------------
}
