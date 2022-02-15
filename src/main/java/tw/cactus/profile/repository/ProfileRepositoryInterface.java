package tw.cactus.profile.repository;

import java.io.IOException;
import java.util.List;

import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;

import tw.cactus.model.SessionBean;

public interface ProfileRepositoryInterface {

	void updateInformation(String username, String name, String birth, String cellphone, String email,String intro,
			String gender);

	List<SessionBean> loadSessionsByUserName(Integer usesrId);

	void uploadVideo(String videopath, String imgPath, String description, String courseName, String courseType,
			Integer price, CactusBean cbean) throws IOException;

	void uploadPhoto(String imgPath, CactusBean cbean) throws IOException;

	List<CourseBean> findMyUploadCourses(CactusBean CactusBean);

	List<Integer> incomeIndividual(CactusBean CactusBean);

	void typeOfTeacher(CactusBean CactusBean) throws Exception;

	List<SessionBean> findByUserCourse(CactusBean cactusBean);

	String getLastMonth(String dateStr, int addYear, int addMonth, int addDate) throws Exception;

	void setTeacherStateTofalse(CactusBean cactusBean);

	void setAllCoursesToFalse(CactusBean cactusBean);

	CourseBean findMyCourses(Integer courseId);

	void updateVideo(Integer courseId, String courseName,String description, String course_type, Integer price, String image,
			String videoPath);

	void setAllCoursesToTrue(CactusBean cactusBean);

}