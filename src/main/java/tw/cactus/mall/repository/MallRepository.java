package tw.cactus.mall.repository;

import tw.cactus.cart.model.CartBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class MallRepository {
	@Autowired
	EntityManager entityManager;
	@Autowired
	SessionBean sessionBean;
	@Autowired
	JavaMailSender mailSender;

//	public List<SessionBean> getTAllScore() {
//
//		String hql = "From SessionBean ";
//		List<SessionBean> getTAllScore = (List<SessionBean>) entityManager.createQuery(hql, SessionBean.class)
//				.getResultList();
//
//		return getTAllScore;
//	}
//
//	
//	public List<SessionBean> getTheScoreByCourseId() {
//
//		String hql = "From SessionBean Where courseId=:courseId";
//		List<SessionBean> getTheScoreByCourseId = (List<SessionBean>) entityManager.createQuery(hql, SessionBean.class)
//				.setParameter("courseId", sessionBean.getCourseBean().getCourseId()).getResultList();
//
//		return getTheScoreByCourseId;
//	}
//
//	public void insert(Integer score) {
//		
//		
//		sessionBean.setScore(score);
//		entityManager.persist(sessionBean);
//					
//	}
	
	//"midorima0706@gmail.com"
	public void sendingEmail100(String i) throws UnsupportedEncodingException, MessagingException {
		String sendEmail = "CactusOfficial88@gmail.com";
		String cactusName = "Cactus線上教學平台";
		// SimpleMailMessage message = new SimpleMailMessage();
		// (SendEmail,CactusName);
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		helper.setFrom(sendEmail, cactusName);
		helper.setTo("midorima0706@gmail.com");
		helper.setText(i);
		helper.setSubject("Cactus手寫");
		
		mailSender.send(message);
		
	}
	
	

}
