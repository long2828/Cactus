package tw.cactus.profile.service.impl;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.login.service.LoginServiceInterface;

import tw.cactus.model.SessionBean;
import tw.cactus.profile.repository.ProfileRepositoryInterface;
import tw.cactus.profile.service.ProfileServiceInterface;
@Service
@Transactional
public class ProfileService implements ProfileServiceInterface {
	
	@Autowired
	LoginServiceInterface loginServiceInterface;
	@Autowired
	EntityManager entityManager;
	@Autowired
	ProfileRepositoryInterface profileRepositoryInterface;
	@Autowired
	CactusBean CactusBean;
	
	@Override
	public void reviseInformation(String username, String name, String birth, String cellphone, String email,String intro,String gender) {
		profileRepositoryInterface.updateInformation(username, name, birth, cellphone, email,intro, gender);
	}
	@Override
	public List<SessionBean> loadSessionsByUserName(Integer usesrId){
		List<SessionBean> memberSessions = profileRepositoryInterface.loadSessionsByUserName(usesrId);
		return memberSessions;
	}
	
	@Override
	public void uploadVideo(String videopath,String imgPath,String description, String courseName, String courseType, Integer price,CactusBean cbean) throws IOException {
		profileRepositoryInterface.uploadVideo(videopath, imgPath, description, courseName, courseType, price, cbean);
	}
	
	@Override
	public void uploadPhoto(String imgPath,CactusBean cbean) throws IOException {
		profileRepositoryInterface.uploadPhoto(imgPath, cbean);
		
	}
	
	@Override
	public List<CourseBean> findMyUploadCourses(CactusBean CactusBean){
		return profileRepositoryInterface.findMyUploadCourses(CactusBean);
	}
	
	@Override
	public List<Integer> incomeIndividual(CactusBean CactusBean) {
		return profileRepositoryInterface.incomeIndividual(CactusBean);
	}
	
	@Override
	public void typeOfTeacher(CactusBean CactusBean) throws Exception {
		profileRepositoryInterface.typeOfTeacher(CactusBean);
	}
	
	@Override
	public List<SessionBean> findByUserCourse(CactusBean cactusBean){
		return profileRepositoryInterface.findByUserCourse(cactusBean);
	}
	
	@Override
	public boolean everBought(CactusBean cactusBean) {
		if(cactusBean.getNumberOfSubscription()>0)
			return true;
		return false;
	}
	
	@Override
	public boolean expiration(CactusBean cactusBean) throws ParseException {//判斷教師資格是否到期
		DateTimeFormatter currentTime = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String str = (String)currentTime.format(LocalDateTime.now());
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		//將字串形式的時間轉化為Date型別的時間
		Date a=sdf.parse(str);
		Date b=sdf.parse(cactusBean.getExpirationDate());
		//Date類的一個方法，如果a早於b返回true，否則返回false
		if(a.before(b))
			return true;
		else			
			return false;
	}
	
	@Override
	public void setTeacherStateTofalse(CactusBean cactusBean) {
		profileRepositoryInterface.setTeacherStateTofalse(cactusBean);
	}
	
	@Override
	public void setAllCoursesToFalse(CactusBean cactusBean) {
		profileRepositoryInterface.setAllCoursesToFalse(cactusBean);
	}
	
	@Override
	public void updateVideo(Integer courseId, String courseName,String description, String course_type, Integer price, String image, String videoPath) {
		profileRepositoryInterface.updateVideo(courseId, courseName, description, course_type, price, image, videoPath);		
	}
	
	@Override
	public void setAllCoursesToTrue(CactusBean cactusBean) {
		profileRepositoryInterface.setAllCoursesToTrue(cactusBean);
	}
}
