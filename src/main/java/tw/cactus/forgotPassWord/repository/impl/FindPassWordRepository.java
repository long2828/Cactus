package tw.cactus.forgotPassWord.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.cactus.forgotPassWord.repository.FindPassWordRepositoryInterface;
import tw.cactus.login.model.CactusBean;
import tw.cactus.signUp.repository.SignUpRepositoryInterface;


@Repository
public class FindPassWordRepository implements FindPassWordRepositoryInterface {
		
		@Autowired
		EntityManager entityManager;
		
		
		public CactusBean checkByEmail(String email) {
			
			String hql = "from cactus where email=:email";
			Query query = entityManager.createQuery(hql, CactusBean.class).setParameter("email", email);
			CactusBean result;
			try {
				result = (CactusBean) query.getSingleResult();
			}
			catch(Exception e) {
				e.printStackTrace();
				return null;
			}
			return result;
		}

		@Override
		public void updatePassword(CactusBean c1) {
			entityManager.merge(c1);
		}

	


}
