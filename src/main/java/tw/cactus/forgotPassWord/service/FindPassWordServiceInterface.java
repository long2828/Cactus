package tw.cactus.forgotPassWord.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import tw.cactus.login.model.CactusBean;

public interface FindPassWordServiceInterface {
	boolean checkByEmail(String email);
	boolean sendEmail(String email) throws UnsupportedEncodingException, MessagingException;
	boolean save(String email, String password);
	public void sendForgotPasswordEmail(String email) throws UnsupportedEncodingException, MessagingException;
}
