package tw.cactus.back.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;

import tw.cactus.back.model.CMemberBean;
import tw.cactus.back.repository.CactusRepository;
import tw.cactus.back.service.CactusService;
import tw.cactus.course.model.CourseBean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CactusServiceImpl implements CactusService {

	@Autowired
	CactusRepository cactusRepository;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	CactusBean cactusebean;

	// 員工登入
	@Override
	public boolean checkLogin(String memberName, String password) {
		CMemberBean c1 = cactusRepository.loadByMemberName(memberName);
		if (c1.getPassword().equals(password)) {
			return true;
		}
		return false;
	}
	
	// 找所有員工
	@Override
	public List<CMemberBean> findCMembers() {
		return cactusRepository.findAllCMember();
	}

	//修改會員資料
	@Override
	public CactusBean updateUser(String username, String name, String email, String password, String birth, String cellphone,
			String gender){
		return cactusRepository.updateOneUser(username, name, email, password, birth, cellphone, gender);
	}



	@Override
	public List<CactusBean> findUsers() {
		return cactusRepository.findAllUser();
	}

	@Override
	public List<CourseBean> findCourse() {

		return cactusRepository.findCourse();
	}

	@Override
	public List<SessionBean> findSession() {

		return cactusRepository.findSession();
	}

	@Override
	public void deleteCactus(Integer userId) {
		cactusRepository.deleteCactus(userId);
	}



	@Override
	public CactusBean findByUserName(String userName) {
		return cactusRepository.findByUserName(userName);
	}

	@Override
	public void blockade(Integer userId) {

		cactusRepository.blockade(userId);

	}

	@Override
	public void unblock(Integer userId) {

		cactusRepository.unblock(userId);

	}

	@Override
	public void updateCMember(String memberName, String password, String name) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void blockvideo(Integer courseId) {
		
	    cactusRepository.blockvideo(courseId);
	}
	@Override
	public void unblockvideo(Integer courseId) {
		cactusRepository.unblockvideo(courseId);
		
	}
	@Override
	public boolean sendBlockEmail(Integer userId, String reason) throws UnsupportedEncodingException, MessagingException {
		String SendEmail = "CactusOfficial88@gmail.com";
		String CactusName = "Cactus線上教學平台";
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		helper.setFrom(SendEmail, CactusName);
		String email = cactusRepository.findEmail(userId).getEmail();		
		helper.setTo(email);
		System.out.println(email);
		
		helper.setText(reason);
		helper.setSubject("您的帳號已被暫時封鎖");

		   mailSender.send(message);
		   System.out.println("Mail Send...");
		
		return true;

	}
	
	
	@Override
	public boolean sendBlockVideoEmail(Integer courseId, String reason) throws UnsupportedEncodingException, MessagingException {
		String SendEmail = "CactusOfficial88@gmail.com";
		String CactusName = "Cactus線上教學平台";
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		helper.setFrom(SendEmail, CactusName);
		String email = cactusRepository.findEmail(courseId).getEmail();		
		helper.setTo(email);
		System.out.println(email);
		
		helper.setText(reason);
		helper.setSubject("您的帳號已被暫時封鎖");

		   mailSender.send(message);
		   System.out.println("Mail Send...");
		
		return true;

	}
	
	@Override
	public List<SessionBean> findMonthIncome(String month) {
		return cactusRepository.findMonthRevenue(month);
	
	}


}
