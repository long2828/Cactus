package tw.cactus.course.service;

import java.io.IOException;
import java.util.List;

import tw.cactus.cart.model.CartBean;
import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;

public interface CourseService {

	//	from User user where user.age=20;
	List<CourseBean> findCourseTypeOfMusic();

	void upload(String videopath, String imgPath, String description, String courseName, String courseType,
			Integer price, String launched, CactusBean cbean) throws IOException;

	CourseBean findcourse(Integer courseId);

	long findappraise(String appraise, Integer courseId);

	double findscore(Integer score, Integer courseId);

	long findvideo(Integer USER_ID, Integer courseId);

	long findstudent(Integer orderId, Integer courseId);
	
	public List<CourseBean> findCourseTypeOfCoding();
	public List<CourseBean> findCourseTypeOfSport();
	public List<CourseBean> findCourseTypeOfLan();
	public List<CourseBean> findCourseTypeOfEconomy();
	public List<CourseBean> findCourseTypeOfFree();
	
	public List<SessionBean> getAppraiseByCourseIdId(Integer courseId);

	List<Long> catchTotalPurched(List<CourseBean> musiclist);
	public SessionBean findTopCourse();
	
//	public List<SessionBean> findTopCourse1();
//
//	List<CourseBean> findTopThree();
	


}