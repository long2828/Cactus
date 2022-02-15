package tw.cactus.signUp.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import tw.cactus.login.model.CactusBean;

public interface SignUpServiceInterface {
	boolean checkSignUpEmail(String email);

	boolean checkSignUpUser(String username);
	boolean sendingEmail(String email) throws UnsupportedEncodingException, MessagingException;

	boolean insertRegister(String username, String email, String password);
	
	public CactusBean loadByUsername(String username);
	
	public void verifySuccess(CactusBean cactusBean);
	
	public CactusBean loadByUsernameByc1(CactusBean c1);
}
