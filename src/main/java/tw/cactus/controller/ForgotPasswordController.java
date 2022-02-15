//package tw.cactus.controller;
//
//import javax.persistence.EntityManager;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import tw.cactus.login.model.CactusBean;
//import tw.cactus.model.CactusBeanDao;
//
//@Controller
//public class ForgotPasswordController {
//	
//	@Autowired
//	EntityManager entityManager;
//	@Autowired
//	private CactusBeanDao cDao;
//	@Autowired
//	static CactusBean c1;
//	
//	@GetMapping("/forgotpassword")
//	public String forgotPassword() {
//		return "ForgotPassword";
//	}
//	
//	@GetMapping("/resetpassword")
//	public String resetpassword() {	
//		System.out.println(c1.getUsername());
//		return "Resetpassword";
//	}
//	
//	@PostMapping("/resetpassword2")
//	public String resetpassword(@RequestParam String password) {
//		System.out.println(c1.getUsername());
//		
//		System.out.println(c1.getPassword());
//
//		cDao.save1(c1,password);
//		return "Resetpassword";
//	}
//	
//	@GetMapping("/sendnewpassword")
//	public String sendnewpassword(@RequestParam String email) {
//		c1=cDao.findByEmail(email);
//	    cDao.sendForgotPasswordEmail(email);
//		System.out.println(c1.getUsername());
//		return "index";
//	}
//
//}
