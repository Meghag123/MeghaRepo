<%-- 
    Document   : Qualification Action
    Created on : 15-11-2019
    Author     : Tune4jobs
--%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mvc.crud.beans.JobBean"%>
<%@ page import="com.mvc.crud.dao.insertQualification"%>


<%

session=request.getSession(false);
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires", 0);
response.setHeader("Pragma","no-cache");
String id = (String) session.getAttribute("u_id");



	String qualification = "NA";
	String stream = "NA";
	String experience = "NA";
	String language = "NA";
	String additionalskills = "NA";
	String post = "NA";
	String image = "NA";

	boolean isMultipart;
	File file;
	String filePath = getServletContext().getInitParameter("file-upload");
	//Check that we have a file upload request
	isMultipart = ServletFileUpload.isMultipartContent(request);
	response.setContentType("text/html");


	if (!isMultipart) {
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet upload</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>No file uploaded</p>");
		out.println("</body>");
		out.println("</html>");
		return;
	}

	DiskFileItemFactory factory = new DiskFileItemFactory();

	// maximum size that will be stored in memory
	factory.setSizeThreshold((4 * 1024));

	// Location to save data that is larger than maxMemSize.
	factory.setRepository(new File("c:\\temp"));

	// Create a new file upload handler
	ServletFileUpload upload = new ServletFileUpload(factory);

	// maximum file size to be uploaded.
	upload.setSizeMax((50 * 1024));

	try {
		// Parse the request to get file items.
		List fileItems = upload.parseRequest(request);

		// Process the uploaded file items
		Iterator i = fileItems.iterator();

		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet upload</title>");
		out.println("</head>");
		out.println("<body>");

		while (i.hasNext()) {
			FileItem fi = (FileItem) i.next();
			if (!fi.isFormField()) {
				// Get the uploaded file parameters
				String fieldName = fi.getFieldName();
				String fileName = fi.getName();
				image = fileName;
				String contentType = fi.getContentType();
				boolean isInMemory = fi.isInMemory();
				long sizeInBytes = fi.getSize();

				// Write the file
				if (fileName.lastIndexOf("\\") >= 0) {
					file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
				} else {
					file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
				}
				fi.write(file);
				
			} else {
		
				switch (fi.getFieldName()) {
				case "qualification": {
					qualification = fi.getString();
					break;
				}
				case "stream": {
					stream = fi.getString();
					break;
				}
				case "post": {
					post = fi.getString();
					break;
				}
				case "experience": {
					experience = fi.getString();
					break;
				}
				case "language": {
					language = fi.getString();
					break;
				}
				case "additionalskills": {
					additionalskills = fi.getString();
					break;
				}
				}

			}
		}
		out.println("</body>");
		out.println("</html>");
	} catch (Exception ex) {
		System.out.println(ex);
	}

	JobBean jobBean = new JobBean();
	jobBean.setUid(id);
	jobBean.setQualification(qualification);
	jobBean.setStream(stream);
	jobBean.setExperience(experience);
	jobBean.setLanguage(language);
	jobBean.setAdditionalskills(additionalskills);
	jobBean.setPost(post);
	jobBean.setImage(image);
	
	
	session=request.getSession();
	
	session.setAttribute("post",post);

	boolean flag = insertQualification.insertQuali(jobBean);

	if (flag == true) {
		response.sendRedirect("candidateHomeLink.jsp");
	} else {
		out.println("error");
	}
%>

