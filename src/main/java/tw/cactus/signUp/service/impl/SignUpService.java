package tw.cactus.signUp.service.impl;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import net.bytebuddy.utility.RandomString;
import tw.cactus.login.model.CactusBean;
import tw.cactus.signUp.repository.SignUpRepositoryInterface;
import tw.cactus.signUp.service.SignUpServiceInterface;

@Service
@Transactional
public class SignUpService implements SignUpServiceInterface {
	
	@Autowired
	SignUpRepositoryInterface signUpRepositoryInterface;
	
	@Autowired
	JavaMailSender mailSender;
	
	@Autowired
	CactusBean cactusBean;
	
	@Override
	public boolean checkSignUpUser(String username) {
		
		
		CactusBean c2 = signUpRepositoryInterface.loadByUsername(username);	
		
		if(c2 == null) {
			return true;
		}
		return false;
	}
	
	@Override
	public boolean checkSignUpEmail(String email) {
		
		CactusBean c1 = signUpRepositoryInterface.loadByEmail(email);
		
		if(c1 == null) {
			return true;
		}
		return false;
	}
	
//	@Override
//	public boolean sendEmail(String email) throws UnsupportedEncodingException, MessagingException {
//		return sendEmail(email);
//	}

	@Override
	public boolean insertRegister(String userName, String email, String password) {
		boolean flowControl = false;
		signUpRepositoryInterface.insertRegister(userName, email, password);
		CactusBean c1 = signUpRepositoryInterface.loadByUsername(userName);
		if(c1 != null) {
			return true;
		}
		
		return flowControl;
	}

	
	@Override
	public boolean sendingEmail(String email) throws UnsupportedEncodingException, MessagingException {
		String sendEmail = "CactusOfficial88@gmail.com";
		String cactusName = "Cactus線上教學平台";
		// SimpleMailMessage message = new SimpleMailMessage();
		// (SendEmail,CactusName);
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		helper.setFrom(sendEmail, cactusName);
		helper.setTo(email);
		helper.setText("請點選以下網址開通您的帳號" + "\n" + "http://localhost:8080/cactus/verify");
		helper.setSubject("Cactus驗證信件");
		
		try {
			mailSender.send(message);
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	
	
	@Override
	public CactusBean loadByUsername(String username) {
		return signUpRepositoryInterface.loadByUsername(username);
	}
	
	
	@Override
	public void verifySuccess(CactusBean cactusBean) {
		
		signUpRepositoryInterface.verifySuccess(cactusBean);
	}

	@Override
	public CactusBean loadByUsernameByc1(CactusBean c1) {
		
		return signUpRepositoryInterface.loadByUsernameByc1(c1);
	}
	
//	public void insertRegister(String username, String email, String password) {
//		signUpRepositoryInterface.insertRegister(username, email, password);
//	}
	
	//產生註冊驗證碼
//	public void register(CactusBean cactusBean, String siteURL)
//	        throws UnsupportedEncodingException, MessagingException {
////	    String encodedPassword = passwordEncoder.encode(c.getPassword());
////	    c.setPassword(encodedPassword);
//	     
//	    String randomCode = RandomString.make(64);
//	    cactusBean.setVerificationCode(randomCode);
//	    cactusBean.setEnabled(false);
//	     
//	    signUpRepositoryInterface.saveVerificationCode(cactusBean);
//	     
//	    sendVerificationEmail(cactusBean, siteURL);
//	}
	
//	private void sendVerificationEmail(CactusBean cactusBean, String siteURL) {
//	     
//    }
}
