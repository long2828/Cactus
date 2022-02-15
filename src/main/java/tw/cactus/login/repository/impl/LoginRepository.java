package tw.cactus.login.repository.impl;

import javax.persistence.EntityManager;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.cactus.login.model.CactusBean;
import tw.cactus.login.repository.LoginRepositoryInterface;
@Repository
public class LoginRepository implements LoginRepositoryInterface {

	@Autowired
	EntityManager entityManager;
	
	@Override
	public CactusBean loadByUsername(String userName) {
		String hql = "from cactus where username=:userName";
		CactusBean query =  entityManager.createQuery(hql, CactusBean.class).setParameter("userName", userName).getSingleResult();
//		query.setParameter("userName", userName);
		
		
//		CactusBean result = query.uniqueResult();
		System.out.println(query.getUsername());
		return query;
	}
	@Override
	public CactusBean findByUserName(String userName) { //查 .find (用primaryKey查)
		CactusBean c ;
		try {
			System.out.println(userName);
			c = (CactusBean) entityManager.createQuery("from cactus c where c.username = :userName").setParameter("userName", userName).getSingleResult();
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		return c;
	}

}
