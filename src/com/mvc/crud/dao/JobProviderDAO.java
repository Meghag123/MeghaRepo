package com.mvc.crud.dao;

import com.mvc.crud.beans.JobBean;
import com.mvc.crud.dao.DBDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JobProviderDAO {
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

	// -------------------------------------------END--------------------------
	// -----------Check Job Provider username whether already registered---------//
	/**
	 *
	 * @author : KAVYA
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: check username
	 * @param :jobBean
	 * @return : list
	 * 
	 */
	public static ArrayList<JobBean> checkProviderName() throws SQLException {

		ArrayList<JobBean> jb = new ArrayList<JobBean>();

		try {

			con = getDbConnection();
			pst = con.prepareStatement("select r_username from tbl_recruiter_registration ");
			// pst.setString(1, jobBean.getR_username());
			rs = pst.executeQuery();
			while (rs.next()) {
				JobBean jobBean = new JobBean();
				jobBean.setR_username(rs.getString(1));

				jb.add(jobBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jb;

	}

	// -------------------------------------------END--------------------------
	// ------------------------------------SignUp Action of Job
	// Provider--------------------------------------//
	/**
	 *
	 * @author : KAVYA
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: signup
	 * @param :
	 *            jobBean
	 * @return : boolean flag
	 */

	public static boolean signUpProvider(JobBean jobBean) throws SQLException {

		try {

			con = getDbConnection();
			pst = con.prepareStatement(
					"insert into tbl_recruiter_registration(r_company_name,r_email,r_phone,r_company_address,r_location,r_username,r_password)values(?,?,?,?,?,?,?)");
			pst.setString(1, jobBean.getR_company_name());
			pst.setString(2, jobBean.getEmail());
			pst.setString(3, jobBean.getR_phone());
			pst.setString(4, jobBean.getR_company_address());
			pst.setString(5, jobBean.getR_location());
			pst.setString(6, jobBean.getR_username());
			pst.setString(7, jobBean.getR_password());

			pst.executeUpdate();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

	}

	// -------------------------------------------END------------------------------------------------
	// ------------------------Login action of Job Provider(check username and
	// password whether correct------------------//
	/**
	 *
	 * @author : KAVYA
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: signup
	 * @param :
	 *            jobBean
	 * @return : list
	 */

	public static ResultSet check(JobBean jobBean) throws SQLException {

		try {

			con = getDbConnection();
			pst = con.prepareStatement("select * from tbl_recruiter_registration where r_username=? and r_password=?");
			pst.setString(1, jobBean.getR_username());
			pst.setString(2, jobBean.getR_password());
			// pst.setString(3, jobBean.getR_company_name());
			rs = pst.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;

	}

	// -------------------------------------------END--------------------------
	// ----------------insert company details------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: Insert company description
	 * @param :
	 *            jobBean
	 * @return : list
	 */

	public static boolean insertDescription(JobBean jobBean) throws SQLException {

		try {

			con = getDbConnection();
			// pst=con.prepareStatement("insert into
			// tbl_recruiter_description(rd_name,rd_des,rd_id,rd_vac,rd_role,rd_post)values(?,?,?,?,?,?)");
			pst = con.prepareStatement(
					"insert into tbl_recruiter_description(rd_name,rd_des,rd_vac,rd_role,rd_post)values(?,?,?,?,?)");
			pst.setString(1, jobBean.getCompname());
			pst.setString(2, jobBean.getCompdes());
			// pst.setString(3, jobBean.getCompid());
			pst.setString(3, jobBean.getCompvac());
			pst.setString(4, jobBean.getComprole());
			pst.setString(5, jobBean.getComppost());
			pst.executeUpdate();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

	}

	// --------------------------------END----------------------------------
	// ----------------------View Job Description---------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: View company description
	 * @param :
	 *            jobBean
	 * @return : list
	 */

	public static ArrayList<JobBean> viewDescription(JobBean jobBean) throws SQLException {

		ArrayList<JobBean> eb = new ArrayList<JobBean>();
		// JobBean jobBean=new JobBean();
		try {

			con = getDbConnection();
			pst = con.prepareStatement("select distinct * from tbl_recruiter_description where rd_name=?");
			pst.setString(1, jobBean.getCompname());
			System.out.println("the company name in dao=" + jobBean.getCompname());
			rs = pst.executeQuery();
			while (rs.next()) {

				jobBean.setCompname(rs.getString(2));
				jobBean.setCompdes(rs.getString(3));
				// jobBean.setCompid(rs.getString(4));
				jobBean.setCompvac(rs.getString(4));
				jobBean.setComprole(rs.getString(5));
				jobBean.setComppost(rs.getString(6));

				eb.add(jobBean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return eb;

	}

	// ---------------END---------------------------------------------------
	// ------------update job provider
	// details-------------------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: update job provider
	 * @param :
	 *            jobBean
	 * @return : boolean
	 */

	public static boolean updateJobProvider(JobBean jobBean) throws SQLException {

		try {

			con = getDbConnection();
			pst = con.prepareStatement(
					"update tbl_recruiter_description set rd_vac=?,rd_des=?,rd_role=? where rd_name=?");
			pst.setString(1, jobBean.getCompvac());
			pst.setString(2, jobBean.getCompdes());
			pst.setString(3, jobBean.getComprole());
			pst.setString(4, jobBean.getCompname());
			pst.executeUpdate();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

	}

	// -------------------------END------------------------------------
	// ------------select post-STARTs-------------------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: update job provider
	 * @param :
	 *            jobBean
	 * @return : boolean
	 */

	public static ArrayList<JobBean> selectPost(String company) throws SQLException {

		ArrayList<JobBean> eb = new ArrayList<JobBean>();
		try {

			con = getDbConnection();
			pst = con.prepareStatement("select * from tbl_qualification");
			rs = pst.executeQuery();
			while (rs.next()) {
				JobBean jobBean = new JobBean();
				jobBean.setCompname(rs.getString(2));
				jobBean.setCompdes(rs.getString(3));
				// jobBean.setCompid(rs.getString(4));
				jobBean.setCompvac(rs.getString(4));
				jobBean.setComprole(rs.getString(5));
				jobBean.setComppost(rs.getString(6));

				eb.add(jobBean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return eb;

	}

	// ---------------------------END----------------------------
	// ------------Checking company
	// name-STARTs-------------------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: checking name of job provider
	 * @param :
	 *            jobBean
	 * @return : string
	 */
	public static String checkCompanyName(JobBean jobBean) throws SQLException {

		String r = "";
		try {
			boolean flag = false;
			con = getDbConnection();
			pst = con.prepareStatement(
					"select r_company_name from tbl_recruiter_registration where r_username=? and r_password=?");
			pst.setString(1, jobBean.getR_username());
			pst.setString(2, jobBean.getR_password());
			rs = pst.executeQuery();
			flag = true;
			if (rs.next()) {
				r = rs.getString(2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;

	}

	// -------------------------------------ENDs--------------------------
	// ------------select company
	// name-STARTs-------------------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: update job provider
	 * @param :
	 *            jobBean
	 * @return : ArrayList
	 */

	public static ArrayList<JobBean> selectCompanyName(JobBean jobBean) {
		ArrayList<JobBean> eb = new ArrayList<JobBean>();
		try {

			con = getDbConnection();
			pst = con.prepareStatement("select r_company_name from tbl_recruiter_registration where r_username=? ");
			pst.setString(1, jobBean.getR_username());
			// System.out.println("username in dao
			// class="+jobBean.getR_username());
			rs = pst.executeQuery();
			while (rs.next()) {

				jobBean.setR_company_name(rs.getString("r_company_name"));
				// System.out.println("companyname in dao
				// class="+rs.getString("r_company_name"));

				eb.add(jobBean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return eb;
	}

	// --------------------------------END-------------------------------
	// ------------viewing applied
	// candidates-STARTs-------------------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: viewing applied candidates
	 * @param :
	 *            jobBean
	 * @return : ArrayList
	 */
	public static ArrayList<JobBean> viewAppliedCandidateList(JobBean jobBean) {
		ArrayList<JobBean> eb = new ArrayList<JobBean>();
		System.out.println("the company name in the dao class=" + jobBean.getC_company_name());
		try {

			con = getDbConnection();
			pst = con.prepareStatement("select  c_id , c_name from tbl_applied_candidate where c_company_name=? ");
			pst.setString(1, jobBean.getC_company_name());

			rs = pst.executeQuery();
			while (rs.next()) {
				jobBean = new JobBean();
				jobBean.setC_id(rs.getString("c_id"));
				jobBean.setC_name(rs.getString("c_name"));

				eb.add(jobBean);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return eb;
	}

	// --------------------------------END-------------------------------
	// ------------viewing applied candidates
	// profile-STARTs-------------------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: viewing applied candidates profile
	 * @param :
	 *            jobBean
	 * @return : ArrayList
	 */

	public static ArrayList<JobBean> viewAppliedUserProfile(JobBean jobBean) {
		ArrayList<JobBean> eb = new ArrayList<JobBean>();
		try {

			con = getDbConnection();
			pst = con.prepareStatement(
					"select * from userregistration u, tbl_qualification q where q.u_id=u.u_id and u_fname=?");
			pst.setString(1, jobBean.getFirName());
			// System.out.println("the username="+jobBean.getUserFname());
			rs = pst.executeQuery();
			while (rs.next()) {

				jobBean = new JobBean();
				jobBean.setUserFname(rs.getString("u_fname"));
				jobBean.setUserGender(rs.getString("u_gender"));
				jobBean.setUserDob(rs.getString("u_dob"));
				jobBean.setUserEmail(rs.getString("u_email"));
				jobBean.setUserPhone(rs.getString("u_phone"));
				jobBean.setQualification(rs.getString("qualification"));
				jobBean.setExperience(rs.getString("experience"));
				jobBean.setPost(rs.getString("post"));
				jobBean.setImage(rs.getString("photo"));
				eb.add(jobBean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return eb;

	}

	// --------------------------------END-------------------------------
	// ------------viewing candidates
	// list-STARTs-------------------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: viewing candidates list
	 * @param :
	 *            jobBean
	 * @return : ArrayList
	 */

	public static ArrayList<JobBean> ViewCandidateList(JobBean jobBean) {
		ArrayList<JobBean> eb = new ArrayList<JobBean>();
		try {

			con = getDbConnection();
			pst = con.prepareStatement("select distinct u_fname from userregistration ");
			rs = pst.executeQuery();
			while (rs.next()) {
				jobBean = new JobBean();
				jobBean.setUserFname(rs.getString("u_fname"));

				eb.add(jobBean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return eb;
	}

	// --------------------------------END-------------------------------
	// ------------viewing feedback
	// admin-STARTs-------------------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: viewing feedback admin
	 * @param :
	 *            jobBean
	 * @return : ArrayList
	 */

	public static ArrayList<JobBean> ViewFeedbackAdmin(JobBean jobBean) {
		ArrayList<JobBean> eb = new ArrayList<JobBean>();
		try {

			con = getDbConnection();
			pst = con.prepareStatement("select * from tbl_feedback_admin where f_name=?");
			pst.setString(1, jobBean.getUserFname());
			rs = pst.executeQuery();
			while (rs.next()) {
				jobBean = new JobBean();
				jobBean.setName(rs.getString("f_name"));
				jobBean.setDate(rs.getString("f_date"));
				jobBean.setFeedback(rs.getString("f_comment"));

				eb.add(jobBean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return eb;
	}

	// --------------------------------END-------------------------------
	// ------------viewing company
	// list-STARTs-------------------------------------//
	/**
	 *
	 * @author : Abiya
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: viewing company list
	 * @param :
	 *            jobBean
	 * @return : ArrayList
	 */

	public static ArrayList<JobBean> ViewCompanyList(JobBean jobBean) {
		ArrayList<JobBean> eb = new ArrayList<JobBean>();
		try {

			con = getDbConnection();
			pst = con.prepareStatement("select distinct r_company_name from tbl_recruiter_registration ");
			rs = pst.executeQuery();
			while (rs.next()) {
				jobBean = new JobBean();
				jobBean.setR_company_name(rs.getString("r_company_name"));
				// System.out.println("admin
				// usernae="+rs.getString("r_company_name"));

				eb.add(jobBean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return eb;
	}

	// --------------------------------END-------------------------------
	// ------------viewing applied mail-STARTs-------------------------------------//
	/**
	 *
	 * @author : KAVYA
	 * @date : 14/11/2019
	 * @version: 1.0
	 * @purpose: viewing applied Email
	 * @param :
	 *            jobBean
	 * @return : ArrayList
	 */
	public static ArrayList<JobBean> viewAppliedEmail(JobBean jobBean) {
		ArrayList<JobBean> eb = new ArrayList<JobBean>();

		try {

			con = getDbConnection();
			pst = con.prepareStatement("select  c_email from tbl_applied_candidate where c_name=? ");
			pst.setString(1, jobBean.getUserFullname());

			rs = pst.executeQuery();
			while (rs.next()) {
				jobBean = new JobBean();
				jobBean.setC_name(rs.getString("c_email"));

				eb.add(jobBean);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return eb;
	}

	// --------------------------------------END--------------------------
}
