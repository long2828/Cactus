package tw.cactus.back.repository;

import java.util.List;

import tw.cactus.back.model.CMemberBean;
import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;

public interface CactusRepository {
	
	CMemberBean loadByMemberName(String memberName); //員工登入

	List<CMemberBean> findAllCMember(); //找所有員工

	CMemberBean updateCMember(String memberName, String password, String name);//修改員工資料

	List<CactusBean> findAllUser(); //找所有會員
	
	CactusBean updateOneUser(String username, String name, String email, String password, String birth,
			String cellphone, String gender);
	
	public List<CourseBean> findCourse();
	
	public List<SessionBean> findSession();
	
	public void deleteCactus(Integer userId);
	
	public void update(String username, String name, String email, String password, String birth, String cellphone,
			String gender);
	
	public CactusBean findByUserName(String userName);
	
	public void blockade(Integer userId);
	
	public void unblock(Integer userId);

	CactusBean updateOneCMember();
	
	public void blockvideo(Integer courseId);

	public void unblockvideo(Integer courseId);
	
	public CactusBean findEmail(Integer userId);
	
	public CactusBean findVideoEmail(Integer courseId);
	
	public List<SessionBean> findMonthRevenue(String month); 
}