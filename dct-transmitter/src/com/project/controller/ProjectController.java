package com.project.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.bean.ImageBean;
import com.project.bean.RequestWrapper;
import com.project.bean.UserBean;
import com.project.service.IProjectService;



@RestController
public class ProjectController {

    private IProjectService iprojectService;
    
    
	
	@Autowired(required=true)
	@Qualifier(value="iprojectService")
	public void setPersonService(IProjectService projectService){
		this.iprojectService = projectService;
	}
	
	
	
	 @RequestMapping(value="/login", method = RequestMethod.POST)
	    public ModelAndView loginMain(HttpServletRequest req, HttpServletResponse res)
	    {
		 
		 	HttpSession session=req.getSession();
	    	String login=req.getParameter("login");
	    	String password=req.getParameter("password");
	    	
	    	UserBean userBean=new UserBean();
	    	userBean.setLogin(login);
	    	userBean.setPassword(password);
	    	
	    	System.out.println("Login ::"+login);
	    	System.out.println("password ::"+password);
	    	
	    	List<UserBean> userBeanList=new ArrayList<UserBean>();
			try {
				userBeanList = iprojectService.userBeanList(userBean);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	String profile=null;
	    	long userId=0;
	    	UserBean user=new UserBean();
	    	
	    	if(!userBeanList.isEmpty())
	    	{
	    		
	    		user=userBeanList.get(0);
	    		profile=user.getProfile();
	    		userId=user.getId();
	    	}
	    	else
	    	{
	    		return new ModelAndView("redirect:loginAuth");
	    	}
	    	
	    	session.setAttribute("userId",userId );
	    	session.setAttribute("user",user );
	    	
	    	session.setAttribute("profile",profile );
	    	
	    	
	    	session.setAttribute("loggedInUser", req.getAttribute("uname"));
	    	return new ModelAndView("login");
		
	    }
	
	 
	 @RequestMapping(value="/register", method = RequestMethod.POST)
	    public ModelAndView regitserUser(HttpServletRequest req, HttpServletResponse res)
	    {
		 
			HttpSession session=req.getSession();
	    	String login=req.getParameter("login");
	    	String password=req.getParameter("pwd");
	    	String fname=req.getParameter("fname");
	    	String lname=req.getParameter("lname");
	    	String cn=req.getParameter("cn");
	    	String em=req.getParameter("em");
	    	String ct=req.getParameter("ct");
	    	
	    	UserBean userBean=new UserBean();
	    	userBean.setLogin(login);
	    	userBean.setPassword(password);
	    	userBean.setFirstName(fname);
	    	userBean.setLastName(lname);
	    	userBean.setEmail(em);
	    	userBean.setContactNumber(cn);
	    	userBean.setProfile("user");
	    	userBean.setCity(ct);
	    	
	    	iprojectService.adduserBean(userBean);
	    	
	    	
	    	
	    	return new ModelAndView("redirect:loginAuth");
		
	    }
	 
	 
	 
	 @RequestMapping(value="/loginAuth", method = RequestMethod.GET)
	    public ModelAndView loginAuth(HttpServletRequest req, HttpServletResponse res)
	    {
		 	return new ModelAndView("loginAuth");
		
	    }
	 
	 
	 
	 
	 
	 

	
	@RequestMapping(value = "userList", method = RequestMethod.GET)
	public List<UserBean> listuserBean() {
		System.out.println("In Controller userList");
		
		List<UserBean> userBeanList=new ArrayList<>();
		userBeanList=iprojectService.userList();
		
		return userBeanList;
	}
	
	
	@RequestMapping(value = "getUser", method = RequestMethod.GET)
	public UserBean getUser(HttpServletRequest req, HttpServletResponse res) {
		System.out.println("In Controller getUser");
		HttpSession session=req.getSession();
		UserBean userBean=new UserBean();
		 userBean= (UserBean) session.getAttribute("user");
		
		return userBean;
	}
	
	

	
	
	@RequestMapping(value = "productList", method = RequestMethod.GET)
	public List<ImageBean> productList() {
		System.out.println("In Controller productList");
		
		List<ImageBean> productBeanList=new ArrayList<>();
		productBeanList=iprojectService.productList();
		System.out.println("In Controller productList::"+productBeanList.toString());
		return productBeanList;
		
	}
	
	
	@RequestMapping(value = "addProduct", method = RequestMethod.POST)
	public ModelAndView addProduct(HttpServletRequest req, HttpServletResponse res,@RequestParam("file") MultipartFile file) throws IOException {
		System.out.println("In Controller addProduct");
		Map<String,String> resultMap=new HashMap<String,String>();
		
		File image=convert(file);
	
		

		
		String productName=req.getParameter("pname");
		String compressdText=req.getParameter("sec");
		
		String imageString=encodeFileToBase64Binary(image);
		
		
		ImageBean productBean=new ImageBean();
		productBean.setImage(imageString);
		productBean.setName(productName);
		productBean.setCompressionText(compressdText);
		iprojectService.addProduct(productBean);
		
		return new ModelAndView("login");
		
	}
	
	public File convert(MultipartFile file) throws IOException
	{    
	    File convFile = new File(file.getOriginalFilename());
	    convFile.createNewFile(); 
	    FileOutputStream fos = new FileOutputStream(convFile); 
	    fos.write(file.getBytes());
	    fos.close(); 
	    return convFile;
	}
	
	
	private String encodeFileToBase64Binary(File file)
			throws IOException {

		
		byte[] bytes = loadFile(file);
		byte[] encoded = Base64.encodeBase64(bytes);
		String encodedString = new String(encoded);

		return encodedString;
	}

	private static byte[] loadFile(File file) throws IOException {
	    InputStream is = new FileInputStream(file);

	    long length = file.length();
	    if (length > Integer.MAX_VALUE) {
	        // File is too large
	    }
	    byte[] bytes = new byte[(int)length];
	    
	    int offset = 0;
	    int numRead = 0;
	    while (offset < bytes.length
	           && (numRead=is.read(bytes, offset, bytes.length-offset)) >= 0) {
	        offset += numRead;
	    }

	    if (offset < bytes.length) {
	        throw new IOException("Could not completely read file "+file.getName());
	    }

	    is.close();
	    return bytes;
	}
	
	
	


	

	


	
	
	

	

	
	
	
	@RequestMapping(value = "resetPassword", method = RequestMethod.POST)
	public Map<String,String> resetPassword(@RequestBody RequestWrapper requestWrapper) throws IOException {
		System.out.println("In Controller addOrder");
		Map<String,String> resultMap=new HashMap<String,String>();
	
		
		String status=null;
		
		try {
			iprojectService.resetPassword(requestWrapper.getUserId());
			
			
			status="SUCCESS";
			
			
			
			
		} catch (Exception e) {
			status="ERROR:Kindly Check With Database Connectin";
			
		}
		
		resultMap.put("result", status);
		return resultMap;
	}
	
	

	
}
