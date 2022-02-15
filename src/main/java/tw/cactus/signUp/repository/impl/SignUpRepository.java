package tw.cactus.signUp.repository.impl;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Repository;

import net.bytebuddy.utility.RandomString;
import tw.cactus.login.model.CactusBean;
import tw.cactus.signUp.repository.SignUpRepositoryInterface;

@Repository
public class SignUpRepository implements SignUpRepositoryInterface{
	
	@Autowired
	EntityManager entityManager;
	
	public CactusBean loadByEmail(String email) {
		
		String hql = "from cactus where email=:email";
		Query query = entityManager.createQuery(hql, CactusBean.class).setParameter("email", email);
		CactusBean result;
		try {
			result = (CactusBean) query.getSingleResult();
		
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		return result;
	}
	
	@Override
	public CactusBean loadByUsername(String username) {
		String hql = "from cactus where username=:userName";
		Query query = entityManager.createQuery(hql, CactusBean.class).setParameter("userName", username);
		CactusBean result;
		try {
			result = (CactusBean) query.getSingleResult();
			
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		return result;
	}
	
	@Override
	public CactusBean loadByUsernameByc1(CactusBean c1) {
		String hql = "from cactus where username=:userName";
		Query query = entityManager.createQuery(hql, CactusBean.class).setParameter("userName", c1.getUsername());
		CactusBean result;
		result = (CactusBean) query.getSingleResult();
		
		return result;		
	}


	
//	public void sendForgotPasswordEmail(String email) {
//
//		String SendEmail = "CactusOfficial88@gmail.com";
//		SimpleMailMessage message = new SimpleMailMessage();
//		message.setFrom(SendEmail);
//		message.setTo(email);
//		message.setText("請點選以下網址重新設定密碼" + "\n" + "http://localhost:8080/cactus/resetpassword");
//		message.setSubject("Cactus找回密碼");
//
//		mailSender.send(message);
//		System.out.println("Mail Send...");
//
//	}

	@Override
	public void insertRegister(String username, String email, String password) {
		CactusBean c1 = new CactusBean();
		c1.setUsername(username);
		c1.setPassword(password);
		c1.setEmail(email);
		//註冊存入驗證碼
//		String randomCode = RandomString.make(64);
//		c1.setVerificationCode(randomCode);
		c1.setQualificationOfTeacher(false);
        c1.setPhotopath("未知.png");
		c1.setEnabled(false);
		c1.setPermission(true);
		c1.setNumberOfSubscription(0);
		entityManager.persist(c1);
	}
	
	@Override
	public void verifySuccess(CactusBean cactusBean) {
		
		cactusBean.setEnabled(true);
		entityManager.merge(cactusBean);
		
	}
	
	
		
		
		
}
	
	
	//註冊Check Email是否重複 這個不要亂刪我還要
//	public CactusBean checkEmail(CactusBean cBean) {
//		Query<CactusBean> query = (Query<CactusBean>)entityManager.createQuery
//		        ("from cactus where email=:email",CactusBean.class).setParameter("email", cBean.getEmail());
//		        CactusBean result = query.uniqueResult();
//		    if (result == null) {
//		        entityManager.persist(cBean); 
//		        return cBean;
//		    } else 
//		        System.out.println("Email已被註冊");
//		        return null;
//	}


