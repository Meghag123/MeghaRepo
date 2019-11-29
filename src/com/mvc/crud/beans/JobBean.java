package com.mvc.crud.beans;

import java.io.InputStream;

public class JobBean {

	/*
	 * AUTHOR : Tune4Jobs DATE :7/11/2019
	 */

	private int id;
	private String uid;
	private String qualification;
	private String stream;
	private String language;
	private String experience;
	private String additionalskills;
	private String post;
	private String declaration;
	private String image;

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getStream() {
		return stream;
	}

	public void setStream(String stream) {
		this.stream = stream;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getAdditionalskills() {
		return additionalskills;
	}

	public void setAdditionalskills(String additionalskills) {
		this.additionalskills = additionalskills;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getDeclaration() {
		return declaration;
	}

	public void setDeclaration(String declaration) {
		this.declaration = declaration;
	}

	// ----------------------------------------End of getters & setters of Job
	// seeker-------------------------------------//

	/*
	 * AUTHOR : Tune4Jobs DATE :7/11/2019
	 */
	private String userId;
	private String userFname;
	private String userLname;
	private String userFullname;
	private String userGender;
	private String userDob;
	private String userAddress;
	private String userPhone;
	private String userAltPhone;
	private String userEmail;
	private String userName;
	private String userPassword;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserFullname() {
		return userFullname;
	}

	public void setUserFullname(String userFullname) {
		this.userFullname = userFullname;
	}

	public String getUserFname() {
		return userFname;
	}

	public void setUserFname(String userFname) {
		this.userFname = userFname;
	}

	public String getUserLname() {
		return userLname;
	}

	public void setUserLname(String userLname) {
		this.userLname = userLname;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserDob() {
		return userDob;
	}

	public void setUserDob(String userDob) {
		this.userDob = userDob;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAltPhone() {
		return userAltPhone;
	}

	public void setUserAltPhone(String userAltPhone) {
		this.userAltPhone = userAltPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	// -----------------------------------Getters&Setters of Job
	// Provider-----------------------------------//

	/*
	 * AUTHOR : Tune4Jobs DATE :8/11/2019
	 */
	private int r_id;

	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}

	private String r_company_name;

	public String getR_company_name() {
		return r_company_name;
	}

	public void setR_company_name(String r_company_name) {
		this.r_company_name = r_company_name;
	}

	private String r_email;

	public String getEmail() {
		return r_email;
	}

	public void setEmail(String email) {
		r_email = email;
	}

	private String r_phone;

	public String getR_phone() {
		return r_phone;
	}

	public void setR_phone(String r_phone) {
		this.r_phone = r_phone;
	}

	private String r_company_address;

	public String getR_company_address() {
		return r_company_address;
	}

	public void setR_company_address(String r_company_address) {
		this.r_company_address = r_company_address;
	}

	private String r_location;

	public String getR_location() {
		return r_location;
	}

	public void setR_location(String r_location) {
		this.r_location = r_location;
	}

	private String r_username;

	public String getR_username() {
		return r_username;
	}

	public void setR_username(String r_username) {
		this.r_username = r_username;
	}

	private String r_password;

	public String getR_password() {
		return r_password;
	}

	public void setR_password(String r_password) {
		this.r_password = r_password;
	}

	// ----------------------------------------End of getters & setters of Job
	// Provider-------------------------------------//
	/*
	 * AUTHOR : Tune4Jobs DATE :7/11/2019
	 */

	private String compname;
	private String compdes;
	private String compvac;
	private String comprole;
	private String compid;
	private String comppost;

	public String getComppost() {
		return comppost;
	}

	public void setComppost(String comppost) {
		this.comppost = comppost;
	}

	public String getCompid() {
		return compid;
	}

	public void setCompid(String compid) {
		this.compid = compid;
	}

	public String getCompname() {
		return compname;
	}

	public void setCompname(String compname) {
		this.compname = compname;
	}

	public String getCompdes() {
		return compdes;
	}

	public void setCompdes(String compdes) {
		this.compdes = compdes;
	}

	public String getCompvac() {
		return compvac;
	}

	public void setCompvac(String compvac) {
		this.compvac = compvac;
	}

	public String getComprole() {
		return comprole;
	}

	public void setComprole(String comprole) {
		this.comprole = comprole;
	}

	// ----------------------------------------End of getters & setters of
	// Applied candidates-------------------------------------//

	/*
	 * AUTHOR : Tune4Jobs
	 *  DATE :7/11/2019
	 */

	private String f_id;
	private String c_name;
	private String c_email;
	private String c_company_name;
	private String c_post;
	private String c_id;
	private String date;
	private String feedback;

	public String getR_email() {
		return r_email;
	}

	public void setR_email(String r_email) {
		this.r_email = r_email;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getF_id() {
		return f_id;
	}

	public void setF_id(String f_id) {
		this.f_id = f_id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_email() {
		return c_email;
	}

	public void setC_email(String c_email) {
		this.c_email = c_email;
	}

	public String getC_company_name() {
		return c_company_name;
	}

	public void setC_company_name(String c_company_name) {
		this.c_company_name = c_company_name;
	}

	public String getC_post() {
		return c_post;
	}

	public void setC_post(String c_post) {
		this.c_post = c_post;
	}

	private String firName;

	public String getFirName() {
		return firName;
	}

	public void setFirName(String firName) {
		this.firName = firName;
	}

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}


}
