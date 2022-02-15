package tw.cactus.videopage.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;
import tw.cactus.videopage.repository.VideoPageRepository;

@Repository
public class VideoPageRepositoryImpl implements VideoPageRepository{

	@Autowired
	EntityManager entityManager;
	@Autowired
	SessionBean session;

	public List<SessionBean> getAppraiseByCourseIdId(Integer courseId) {

		String hql = "FROM member_session s WHERE courseId=:courseId AND s.appraise is not null";
		List<SessionBean> getAppraiseList = entityManager.createQuery(hql, SessionBean.class)
				.setParameter("courseId", courseId).getResultList();
		return getAppraiseList;
	}

	
	public CourseBean getCourseNameByCourseId(Integer courseId) {

		String hql = "FROM course WHERE courseId=:courseId";
		Query<CourseBean> query = (Query<CourseBean>) entityManager.createQuery(hql, CourseBean.class);
		query.setParameter("courseId", courseId);

		CourseBean result = query.getSingleResult();

		return result;
	}
	

	public void saveScoreAndAppraise(Integer score, String appraise,String appraiseDate ,CactusBean c1, Integer courseId ) {
		
		
		session = entityManager.createQuery("FROM member_session WHERE user_Id=:userId AND courseId=:courseId",SessionBean.class).
				setParameter("userId", c1.getUserId()).setParameter("courseId",courseId).getSingleResult();
		
		session.setAppraise(appraise);
		session.setScore(score);
		session.setAppraiseDate(appraiseDate);
		
		entityManager.persist(session);
	}

}
