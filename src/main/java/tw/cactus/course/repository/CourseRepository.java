package tw.cactus.course.repository;

import java.io.IOException;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;

public interface CourseRepository {

	public List<CourseBean> findCourseTypeOfMusic();

	public void upload(String videopath,String imgPath,String description, String courseName, String courseType, Integer price,String launched,CactusBean cbean) throws IOException ;//上傳功能
        
	public CourseBean findcourse(Integer courseId); 
	
	public long findappraise(String appraise, Integer courseId);
	
	public double findscore(Integer score, Integer courseId);
	
	public long findvideo(Integer USER_ID, Integer courseId);
	
	public long findstudent(Integer orderId, Integer courseId);
	
	public List<SessionBean> getAppraiseByCourseIdId(Integer courseId);

	List<CourseBean> findCourseTypeOfCoding();

	List<CourseBean> findCourseTypeOfSport();

	List<CourseBean> findCourseTypeOfLan();

	List<CourseBean> findCourseTypeOfEconomy();

	List<CourseBean> findCourseTypeOfFree();

	List<Long> catchTotalPurched(List<CourseBean> musiclist);
	
	public SessionBean findTopCourse();
	
	public List<SessionBean> findTopCourse1();

	public CourseBean findCourseByPk(Integer integer);

	public List<SessionBean> findAllCourse();
}