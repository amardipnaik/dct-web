package com.project.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.project.bean.ImageBean;
import com.project.bean.UserBean;




@Repository
public class ProjectDaoImpl implements IProjectDao{

	

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	
	public void adduserBean(UserBean userBean) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(userBean);
		System.out.println("userBean saved successfully, userBean Details="+userBean);
		
	}
	

	
	
	

	
	

	public void updateuserBean(UserBean userBean) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(userBean);
		System.out.println("UserBean updated successfully, UserBean Details="+userBean);
		
	}



	public UserBean getuserBeanById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		UserBean userBean = (UserBean) session.load(UserBean.class, new Integer(id));
		System.out.println("UserBean loaded successfully, UserBean details="+userBean);
		return userBean;
		
	}

	public void removeuserBean(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		UserBean userBean = (UserBean) session.load(UserBean.class, new Integer(id));
		if(null != userBean){
			session.delete(userBean);
		}
		System.out.println("UserBean deleted successfully, UserBean details="+userBean);
		
	}
	
	public List<UserBean> userList() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from UserBean");
       List<UserBean> userBeanList = query.list();
       
       System.out.println("User Bean List Is :: "+userBeanList.size());
       return userBeanList;
		
	}

	

	
	

	
	
	
	public List<ImageBean> productList() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ImageBean");
       List<ImageBean> productBeanList = query.list();
       
       System.out.println("ProductBean List Is :: "+productBeanList.size());
       return productBeanList;
		
	}
	
	
	
public void addProduct(ImageBean productBean) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(productBean);
		System.out.println("userBean saved successfully, productBean Details="+productBean);
		
	}







public List<UserBean> userBeanList(UserBean userBean) {
	Session session = this.sessionFactory.getCurrentSession();
	
	StringBuilder querryBuilder=new StringBuilder();
	
	querryBuilder.append("SELECT * FROM user_table where login=:login and password=:password ");
	
	SQLQuery query
	 = session.createSQLQuery(querryBuilder.toString()).addEntity(UserBean.class);
	
	query.setParameter("login",userBean.getLogin());
	query.setParameter("password",userBean.getPassword());
	
	List<UserBean> userBeanList=query.list();
	
	return userBeanList;
	
}










public void resetPassword(String userId) {
Session session = this.sessionFactory.getCurrentSession();
	
	StringBuilder querryBuilder=new StringBuilder();
	
	querryBuilder.append("Update user_table set password='pwd' ");
	querryBuilder.append(" where id=:userId");
	
	
	SQLQuery query
	 = session.createSQLQuery(querryBuilder.toString());
	
	query.setParameter("userId",userId);

        query.executeUpdate();
 }




}
