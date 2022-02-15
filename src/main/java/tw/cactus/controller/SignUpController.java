//package tw.cactus.controller;
//
//import java.io.UnsupportedEncodingException;
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.mail.MessagingException;
//
//import org.hibernate.SessionFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import tw.cactus.login.model.CactusBean;
//import tw.cactus.model.CactusBeanDao;
//
//
//@Controller
//public class SignUpController {
//
//	@Autowired
//	private CactusBeanDao cDao;
//	@Autowired
//	private CactusBean cb;
//	
//	@GetMapping("/etest")
//	public String eTest() {
//		return "Etest";
//	}
//	
//	@GetMapping("/signUpPage")
//	public String loginPageAction() {
//		return "SignUp";
//	}
//
//	@PostMapping("/signUp.controller")
//	public String signUpPageAction(@RequestParam String username, @RequestParam String email,
//			@RequestParam String password, Model m) throws UnsupportedEncodingException, MessagingException {
//
//		Map<String, String> errors = new HashMap<String, String>();
//		m.addAttribute("errors", errors);
//
//		CactusBean cBean = new CactusBean();
//		cBean.setUsername(username);
//		cBean.setEmail(email);
//		cBean.setPassword(password);
//
//		if (cDao.registered(cBean) == null) {
//			errors.put("exists", "帳號已被註冊");
//			return "SignUp";
//		}
//		//別刪我要用
////		if (cDao.checkEmail(cBean) == null) {
////			errors.put("exists", "Email已被註冊");
////			return "SignUp";
////		}
//		else {
//			//cDao.sendEmail(email); 寄信先碼掉物刪
//			return "index";
//		}
//
//	}
//
//	
//
//}
