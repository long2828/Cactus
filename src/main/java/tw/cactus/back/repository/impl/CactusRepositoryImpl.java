package tw.cactus.back.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;
import tw.cactus.back.model.CMemberBean;
import tw.cactus.back.repository.CactusRepository;
import tw.cactus.course.model.CourseBean;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.autoconfigure.web.reactive.WebFluxProperties.Session;
import org.springframework.stereotype.Repository;

import com.sun.mail.handlers.image_gif;

@Repository
public class CactusRepositoryImpl implements CactusRepository {

	@Autowired
	EntityManager entityManager;
	@Autowired
	CactusBean cactusBean;
	@Autowired
	CMemberBean cmemberBean;

	@Autowired
	CourseBean courseBean;
	
	@Autowired
	SessionBean sessionBean;

	// 員工登入
	@Override
	public CMemberBean loadByMemberName(String memberName) {
		String hql = "from cmember where memberName=:memberName";
		Query query = entityManager.createQuery(hql, CMemberBean.class).setParameter("memberName", memberName);
		CMemberBean result;
		try {
			result = (CMemberBean) query.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return result;
	}

	// 找所有員工
	public List<CMemberBean> findAllCMember() {
		String hql = "FROM cmember";
		return entityManager.createQuery(hql, CMemberBean.class).getResultList();
	}

	// 修改員工資料
	public CMemberBean updateOneCMember(String memberName, String password, String name, Integer memberId) {
		CMemberBean m1 = (CMemberBean) entityManager.createQuery("from cactus c where c.memberId = :memberId")
				.setParameter("memberId", memberId).getSingleResult();

		m1.setPassword(memberName);
		m1.setPassword(password);
		m1.setName(name);
		entityManager.persist(m1);

		return m1;
	}

	@Override
	public List<CactusBean> findAllUser() {
		String hql = "FROM cactus";
		return entityManager.createQuery(hql, CactusBean.class).getResultList();
	}

	// 修改會員資料
	public CactusBean updateOneCMember(String username, String name, String email, String password, String birth,
			String cellphone, String gender /* ,String verification_code,Boolean enabled */) { // 改

		CactusBean resultBean1 = (CactusBean) entityManager.createQuery("from cactus c where c.username = :userName")
				.setParameter("userName", username).getSingleResult();

		resultBean1.setPassword(password);
		resultBean1.setEmail(email);
		resultBean1.setName(name);
		resultBean1.setBirth(birth);
		resultBean1.setCellphone(cellphone);
		resultBean1.setGender(gender);
//		resultBean1.setGender(verification_code);
//		resultBean1.setEnabled(enabled);
		entityManager.persist(resultBean1);

		return resultBean1;
	}

	@Override
	public List<CourseBean> findCourse() {

		String hql = "FROM course";
		return entityManager.createQuery(hql, CourseBean.class).getResultList();
	}

	@Override
	public List<SessionBean> findSession() {

		String hql = "FROM member_session";
		return entityManager.createQuery(hql, SessionBean.class).getResultList();
	}

	// 刪單筆
	@Override
	public void deleteCactus(Integer userId) {

		cactusBean.setUserId(userId);
		entityManager.remove(entityManager.contains(cactusBean) ? cactusBean : entityManager.merge(cactusBean));
		// entityManager.remove(username);
		// entityManager.remove(entityManager.merge(cb));

	}

	@Override
	public CactusBean updateOneUser(String username, String name, String email, String password, String birth,
			String cellphone, String gender /* ,String verification_code,Boolean enabled */) { // 改

		CactusBean resultBean1 = (CactusBean) entityManager.createQuery("from cactus c where c.username = :userName")
				.setParameter("userName", username).getSingleResult();

		resultBean1.setPassword(password);
		resultBean1.setEmail(email);
		resultBean1.setName(name);
		resultBean1.setBirth(birth);
		resultBean1.setCellphone(cellphone);
		resultBean1.setGender(gender);
//		resultBean1.setGender(verification_code);
//		resultBean1.setEnabled(enabled);
		entityManager.persist(resultBean1);
		return resultBean1;

	}

	@Override
	public CactusBean findByUserName(String userName) { // 查 .find (用primaryKey查)
		CactusBean c;
		try {
			System.out.println(userName);
			c = (CactusBean) entityManager.createQuery("from cactus c where c.username = :userName")
					.setParameter("userName", userName).getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return c;
	}

	@Override
	public void blockade(Integer userId) {

		cactusBean = entityManager.find(CactusBean.class, userId);
		cactusBean.setPermission(false);
		entityManager.persist(cactusBean);

	}

	@Override
	public void unblock(Integer userId) {

		cactusBean = entityManager.find(CactusBean.class, userId);
		cactusBean.setPermission(true);
		entityManager.persist(cactusBean);

	}

	@Override
	public CMemberBean updateCMember(String memberName, String password, String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CactusBean updateOneCMember() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(String username, String name, String email, String password, String birth, String cellphone,
			String gender) {
		// TODO Auto-generated method stub

	}

	@Override
	public void blockvideo(Integer courseId) {
		courseBean = entityManager.find(CourseBean.class, courseId);
		courseBean.setStateOfCourse(false);
		entityManager.persist(courseBean);

	}

	@Override
	public void unblockvideo(Integer courseId) {
		courseBean = entityManager.find(CourseBean.class, courseId);				
		courseBean.setStateOfCourse(true);
		entityManager.persist(courseBean);
	}

	@Override
	public CactusBean findEmail(Integer userId) {
		
		String hql = "from cactus where userId=:userId";
		Query query = entityManager.createQuery(hql, CactusBean.class).setParameter("userId", userId);
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
	public CactusBean findVideoEmail(Integer courseId) {
		String hql = "from course where courseId=:courseId";
		Query query = entityManager.createQuery(hql, CourseBean.class).setParameter("courseId", courseId);
	
		CactusBean c1 = courseBean.getCactusBean();
		System.out.println(c1);
		
		try {
			c1 = (CactusBean) query.getSingleResult();
		
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		return c1;
		
	}
	
	@Override
	public List<SessionBean> findMonthRevenue(String month) {
		
		String hql = "FROM member_session ";
		List<SessionBean> mb = entityManager.createQuery(hql, SessionBean.class).getResultList();
		
		List<SessionBean> quantityOfMonthRevenue = (List<SessionBean>) new ArrayList<SessionBean>(); 
		
		for(int j = 0; j < mb.size(); j++) {
			if((mb.get(j).getPurchaseDate().split("-"))[1].equals(month))
			{
				quantityOfMonthRevenue.add(mb.get(j));
				
			}
			
		}
		System.out.println(quantityOfMonthRevenue.get(0).getOrderId());
		
        return quantityOfMonthRevenue;

		
	}
//		String hql = "FROM member_session";
//		List<SessionBean> mb = entityManager.createQuery(hql, SessionBean.class).getResultList();
//		
//		Integer total = 0;
//		for(int i=0; i<mb.size(); i++)
//		{
//			total += mb.get(i).getCourseBean().getPrice();		
//		}
//		System.out.println(total);
//		return total;
//		
//		
//	
//		
//	}

}
