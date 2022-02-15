package tw.cactus.signUp.repository;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import tw.cactus.login.model.CactusBean;

public interface SignUpRepositoryInterface {

	CactusBean loadByEmail(String email);
	CactusBean loadByUsername(String username);
//	void sendForgotPasswordEmail(String email);
	void insertRegister(String username, String email, String password);
	void verifySuccess(CactusBean cactusBean);
	public CactusBean loadByUsernameByc1(CactusBean c1);
	
	

}
