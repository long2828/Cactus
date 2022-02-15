package tw.cactus.model;


import org.springframework.transaction.annotation.Transactional;

import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class SessionBeanDao {

	@Autowired
	EntityManager entityManager;
	
	@Autowired
	SessionBean sb;
	
	@Autowired
	CourseBean ob;

	public List<SessionBean> findByPrimaryKey(CactusBean cactusBean) {
		Integer userId = cactusBean.getUserId();
		List<SessionBean> sbList =entityManager.createQuery("from member_session where user_Id = :userId").setParameter("userId", userId).getResultList();
		System.out.println(sbList.get(0).getOrderId());
		return sbList;
	}

	public List<CourseBean> findByPrimaryKey2(CactusBean cactusBean) {
		Integer userId = cactusBean.getUserId();
		List<CourseBean> cbList =entityManager.createQuery("from course where user_Id = :userId").setParameter("userId", userId).getResultList();
		return cbList;
	}
	
	public List<SessionBean> findAllSession() {
			String sql = "From member_session";
			return (List<SessionBean>)entityManager.createQuery(sql, SessionBean.class).getResultList();
		}
	}

