package com.project.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.bean.ImageBean;
import com.project.bean.UserBean;
import com.project.dao.IProjectDao;



@Service
public class ProjectServiceImpl implements IProjectService{
	
	private  IProjectDao iprojectDao;


	

	public IProjectDao getiprojectDao() {
		return iprojectDao;
	}

	public void setiprojectDao(IProjectDao iprojectDao) {
		this.iprojectDao = iprojectDao;
	}

	@Transactional
	public void adduserBean(UserBean userBean) {
		iprojectDao.adduserBean(userBean);
		
	}
	
	@Transactional
	public List<UserBean> userList() {
		return iprojectDao.userList();
		
	}



	

	@Transactional
	public UserBean getuserBeanById(int id) {
		// TODO Auto-generated method stub
		return iprojectDao.getuserBeanById(id);
	}

	@Transactional
	public void removeuserBean(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<UserBean> listuserBean(String isTor) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateuserBean(UserBean userBean) {
		// TODO Auto-generated method stub
		
	}

	

	@Transactional
	public List<ImageBean> productList() {
		return iprojectDao.productList();
	}



	@Transactional
	public void addProduct(ImageBean productBean) {
		iprojectDao.addProduct(productBean);
		
	}



	
	@Transactional
	public List<UserBean> userBeanList(UserBean userBean)
	{
		return iprojectDao.userBeanList(userBean);
		
	}
	
	

	

	
	
	@Transactional
	public void resetPassword(String userId)
	{
		iprojectDao.resetPassword(userId);
	}
	
	
	


}
