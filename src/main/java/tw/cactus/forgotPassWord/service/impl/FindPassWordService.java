package tw.cactus.forgotPassWord.service.impl;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import tw.cactus.forgotPassWord.repository.FindPassWordRepositoryInterface;
import tw.cactus.forgotPassWord.service.FindPassWordServiceInterface;
import tw.cactus.login.model.CactusBean;
import tw.cactus.login.repository.LoginRepositoryInterface;
import tw.cactus.login.service.LoginServiceInterface;

@Service
@Transactional
public class FindPassWordService implements FindPassWordServiceInterface {
	
	
		
		@Autowired
		FindPassWordRepositoryInterface findPassWordRepositoryInterface;
		@Autowired
		private JavaMailSender mailSender;
		
		@Override
		public boolean checkByEmail(String email) {			
			//boolean  = findPassWordServiceInterface.checkByEmail(email);
			
			if(findPassWordRepositoryInterface.checkByEmail(email) != null) 
				return true;	
			return false;
		}
		
		@Override
		public void sendForgotPasswordEmail(String email) throws UnsupportedEncodingException, MessagingException {
			String SendEmail = "CactusOfficial88@gmail.com";
			String CactusName = "Cactus線上教學平台";
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message);
			helper.setFrom(SendEmail, CactusName);
			helper.setTo(email);
			helper.setText("請點選以下連結重新設定密碼" + "\n" + "http://localhost:8080/cactus/resetpassword");
			helper.setSubject("Cactus找回密碼");

			mailSender.send(message);
			System.out.println("Mail Send...");

		}

		
//		if(c1.getEmail().equals(email)) {
//			return true;
//		}
//		return false;
//	}


		@Override
		public boolean sendEmail(String email) throws UnsupportedEncodingException, MessagingException {
			// TODO Auto-generated method stub
			return false;
		}

		@Override
		public boolean save(String email, String password) {
			CactusBean c1 = findPassWordRepositoryInterface.checkByEmail(email);
			c1.setPassword(password);
			
			findPassWordRepositoryInterface.updatePassword(c1);
			
			CactusBean c2 = findPassWordRepositoryInterface.checkByEmail(email);
		
			return password.equals(c2.getPassword());
		}


}
