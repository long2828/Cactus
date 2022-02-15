package tw.cactus.back.service;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;

import tw.cactus.back.model.CMemberBean;
import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;

public interface CactusService {

	boolean checkLogin(String memberName, String password);// 員工登入

	List<CMemberBean> findCMembers();// 找所有員工

	public void updateCMember(String memberName, String password, String name); // 修改員工資料
	
	

	List<CactusBean> findUsers();
	public CactusBean updateUser(String username, String name, String email, String password, String birth, String cellphone,
			String gender); //修改會員
	public List<CourseBean> findCourse();
	public List<SessionBean> findSession();
	public void deleteCactus(Integer userId);

	public CactusBean findByUserName(String userName);
	public void blockade(Integer userId);
	public void unblock(Integer userId);
	
	public void blockvideo(Integer courseId);
	public void unblockvideo(Integer courseId);
	
	public boolean sendBlockEmail(Integer userId, String reason) throws UnsupportedEncodingException, MessagingException;
	
	public boolean sendBlockVideoEmail(Integer courseId, String reason) throws UnsupportedEncodingException, MessagingException;
	
	public List<SessionBean> findMonthIncome(String month);

}