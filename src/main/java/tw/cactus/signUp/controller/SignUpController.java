package tw.cactus.signUp.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.cactus.login.model.CactusBean;

import tw.cactus.signUp.service.SignUpServiceInterface;

@Controller
@SessionAttributes("cactusBean")
public class SignUpController {
	

	@Autowired
	SignUpServiceInterface signUpServiceInterface;
	
	@Autowired
	CactusBean cactusBean;
//	
//	@GetMapping("/etest")
//	public String eTest() {
//		return "Etest";
//	}
	
//	@GetMapping("/emailverify")
//    public String verifyEmailAction() {
//		
//		//System.out.println(c1.getName());
//    	return "verify";
//    }
	
	@GetMapping("/verify")
    public String verifyAction(@ModelAttribute("cactusBean") CactusBean cactusBean) {
							   
		System.out.println(cactusBean.getUsername()+"QQ");
		signUpServiceInterface.verifySuccess(cactusBean);
    	return "verifySuccess";
    }
	
	@GetMapping("/signUpPage")
    public String loginPageAction() {
    	return "SignUp";
    }
    	
	 	@PostMapping("/signUp.controller")
		public String signUpPageAction(@RequestParam String username, @RequestParam String email,
				@RequestParam String password, Model m) throws UnsupportedEncodingException, MessagingException{

			Map<String, String> errors = new HashMap<String, String>();
			m.addAttribute("errors", errors);


			if(signUpServiceInterface.checkSignUpUser(username)) {
				if(signUpServiceInterface.checkSignUpEmail(email)) {
				if(signUpServiceInterface.insertRegister(username, email, password)) {
					cactusBean = signUpServiceInterface.loadByUsername(username);
					m.addAttribute("cactusBean",cactusBean);
					System.out.println(cactusBean.getEmail());
					if(signUpServiceInterface.sendingEmail(email)){
						return "index";
					}
				}
			}
			}
			//別刪我要用
//			if (cDao.checkEmail(cBean) == null) {
//				errors.put("exists", "Email已被註冊");
//				return "SignUp";
//			}
			if(signUpServiceInterface.checkSignUpEmail(email)==false) {
				errors.put("exists", "信箱已被註冊");
				return "SignUp";
			}
			if(signUpServiceInterface.checkSignUpUser(username)==false) {
				errors.put("exists", "帳號已被註冊");
				return "SignUp";
			}
			errors.put("exists", "帳號已被註冊");
			return "SignUp";


		}

	      
	        
	}	
   