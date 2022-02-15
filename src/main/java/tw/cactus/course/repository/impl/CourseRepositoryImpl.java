package tw.cactus.course.repository.impl;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import tw.cactus.course.model.CourseBean;
import tw.cactus.course.repository.CourseRepository;
import tw.cactus.course.service.CourseService;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;

@Repository

public class CourseRepositoryImpl implements CourseRepository {

	@Autowired
	EntityManager entityManager;
	@Autowired
	CourseBean courseB;
//	@Autowired
//	CactusBean cbean;

//	from User user where user.age=20;
	@Override
	public List<CourseBean> findCourseTypeOfMusic() {
		String hql = "FROM course WHERE course_type='music' AND stateOfCourse=True";

		return entityManager.createQuery(hql, CourseBean.class).getResultList();
	}

	@Override
	public List<CourseBean> findCourseTypeOfCoding() {
		String hql = "FROM course WHERE course_type='coding' AND stateOfCourse=True";

		return entityManager.createQuery(hql, CourseBean.class).getResultList();
	}

	@Override
	public List<CourseBean> findCourseTypeOfSport() {
		String hql = "FROM course WHERE course_type='sport' AND stateOfCourse=True";

		return entityManager.createQuery(hql, CourseBean.class).getResultList();
	}

	@Override
	public List<CourseBean> findCourseTypeOfLan() {
		String hql = "FROM course WHERE course_type='lan' AND stateOfCourse=True";

		return entityManager.createQuery(hql, CourseBean.class).getResultList();
	}

	@Override
	public List<CourseBean> findCourseTypeOfEconomy() {
		String hql = "FROM course WHERE course_type='economy' AND stateOfCourse=True";

		return entityManager.createQuery(hql, CourseBean.class).getResultList();
	}

	@Override
	public List<CourseBean> findCourseTypeOfFree() {
		String hql = "FROM course WHERE course_type='free' AND stateOfCourse=True";

		return entityManager.createQuery(hql, CourseBean.class).getResultList();
	}

	@Override
	public void upload(String videopath, String imgPath, String description, String courseName, String courseType,
			Integer price, String launched, CactusBean cbean) throws IOException { // 上傳功能

		System.out.println(videopath);
		try (FileInputStream fis = new FileInputStream("C:\\Video\\" + videopath);
//                OutputStream os = new FileOutputStream("C:\\_SpringBoot\\workspace\\Cactus\\src\\main\\resources\\static\\video\\"+videopath);
				OutputStream os = new FileOutputStream(
						"C:\\Users\\Student\\Desktop\\Cactus\\src\\main\\resources\\static\\images" + videopath);) {
			int len = 0;
			byte[] b0 = new byte[81920];
			while ((len = fis.read(b0)) != -1) {
				os.write(b0, 0, len);
			}
			System.out.println("OK");
		}

		try (FileInputStream fis = new FileInputStream("C:\\Images\\" + imgPath);
//                OutputStream os = new FileOutputStream("C:\\_SpringBoot\\workspace\\Cactus\\src\\main\\resources\\static\\images\\"+imgPath);
				OutputStream os = new FileOutputStream(
						"C:\\Users\\Student\\Desktop\\Cactus\\src\\main\\resources\\static\\images" + imgPath);) {
			int len = 0;
			byte[] b0 = new byte[81920];
			while ((len = fis.read(b0)) != -1) {
				os.write(b0, 0, len);
			}
			System.out.println("OK");
		}

//        
//        FileInputStream fis = new FileInputStream("C:\\Images\\"+imgPath);
//        ByteArrayOutputStream bos = new ByteArrayOutputStream();
//        byte[] data = new byte[81920];
//        byte[] buffer = null;
//        int len;
//        while ((len = fis.read(data)) != -1) {
//            bos.write(data, 0, len);
//            System.out.println(fis.read(data));
//        }
//        buffer = bos.toByteArray();            
//        System.out.println("ASD"+buffer);

		CourseBean video = new CourseBean();

		video.setVideoPath(videopath);
		video.setImage(imgPath);
		video.setCourseDescription(description);
		video.setCourseName(courseName);
		video.setLaunched(launched);
		video.setCourse_type(courseType);
		video.setPrice(price);
		video.setCactusBean(cbean);
		entityManager.persist(video);

	}

	@Override
	public CourseBean findcourse(Integer courseId) { // 查 .find (用primaryKey查)
		CourseBean c;
		try {
			System.out.println(courseId);
			c = (CourseBean) entityManager.createQuery("from course c where c.courseId = :courseId")
					.setParameter("courseId", courseId).getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return c;
	}

	@Override
	public long findappraise(String appraise, Integer courseId) {

		String sql = "Select Count(*) as appraise from member_session WHERE courseId =:courseId";

		return (long) entityManager.createQuery(sql).setParameter("courseId", courseId).getSingleResult();

	}

	@Override
	public double findscore(Integer score, Integer courseId) {
		String sql = "SELECT AVG(score) FROM member_session where courseId =:courseId";

		return (double) entityManager.createQuery(sql).setParameter("courseId", courseId).getSingleResult();

	}

	@Override
	public long findvideo(Integer USER_ID, Integer courseId) {
		CourseBean i = (CourseBean) (tw.cactus.course.model.CourseBean) entityManager.find(CourseBean.class, courseId);
		USER_ID = i.getCactusBean().getUserId();

		String sql = "select count(*) as courseId from course where USER_ID =:USER_ID";

		return (long) entityManager.createQuery(sql).setParameter("USER_ID", USER_ID).getSingleResult();
	}

	@Override
	public long findstudent(Integer orderId, Integer courseId) {
		String sql = "select count(*) as orderId from member_session where courseId =:courseId";

		return (long) entityManager.createQuery(sql).setParameter("courseId", courseId).getSingleResult();
	}

	public List<SessionBean> getAppraiseByCourseIdId(Integer courseId) {
		String hql = "FROM member_session s WHERE courseId=:courseId AND s.appraise is not null";
		List<SessionBean> getAppraiseList = entityManager.createQuery(hql, SessionBean.class)
				.setParameter("courseId", courseId).getResultList();
		return getAppraiseList;
	}
	
	
	@Override
    //抓已購買課程並有評論給星星的人總數
    public List<Long> catchTotalPurched(List<CourseBean> musiclist) {
           String sql = "select count(*) as appraise from member_session where courseId =:courseId and appraise is not null";
           List<Long> list = new ArrayList<Long>();
           for(int i=0;i<musiclist.size();i++) {
               list.add((Long) entityManager.createQuery(sql).setParameter("courseId", musiclist.get(i).getCourseId()).getSingleResult());
           }
           return list;
    }
	
	@Override
	public SessionBean findTopCourse() {
		String sql = "select count(courseId) from member_session ";
		SessionBean s = (SessionBean) entityManager.createQuery(sql).getSingleResult();
		return s;
	}
	@Override
	public List<SessionBean> findTopCourse1() {
		String sql = "SELECT TOP 3 * count(courseId)  FROM  member_session ORDER BY count(courseId) DESC";
				
		List s = (List) entityManager.createQuery(sql).getSingleResult();
		return s;
	}

	@Override
	public CourseBean findCourseByPk(Integer integer) {
		return entityManager.find(CourseBean.class,integer);
	}
	
	@Override
	public List<SessionBean> findAllCourse() {
		String sql = "From course";
		return (List<SessionBean>)entityManager.createQuery(sql).getResultList();
	}
}
	
	
