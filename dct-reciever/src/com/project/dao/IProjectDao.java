package com.project.dao;

import java.util.List;

import com.project.bean.ImageBean;
import com.project.bean.UserBean;



public interface IProjectDao {
	
	
	public void adduserBean(UserBean userBean);
	public void updateuserBean(UserBean userBean);

	public UserBean getuserBeanById(int id);
	public void removeuserBean(int id);
	
	public List<UserBean> userList();
	

	
	public List<ImageBean> productList();
	

	
	public void addProduct(ImageBean productBean) ;
	

	
	
	
	public List<UserBean> userBeanList(UserBean userBean);
	
	
	

	
	public void resetPassword(String userId);
	
	
	

}
