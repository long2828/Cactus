//package tw.cactus.controller;
//
//import java.io.IOException;
//import java.security.Principal;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
////import org.codehaus.jackson.JsonGenerationException;
////import org.codehaus.jackson.map.JsonMappingException;
////import org.codehaus.jackson.map.ObjectMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Scope;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.SessionAttributes;
//
//import tw.cactus.cart.model.CartBean;
//import tw.cactus.cart.service.impl.CartServiceImpl;
//import tw.cactus.login.model.CactusBean;
//import tw.cactus.model.CactusBeanDao;
//import tw.cactus.model.CourseBean;
//import tw.cactus.model.CourseBeanDao;
//
//
//@Controller
//@SessionAttributes("cactusBean")
//public class LoginController {
//	
//	@Autowired
//	private CactusBeanDao cDao;
//	@Autowired
//	private CartServiceImpl cartServiceImpl;
//	
////	private CactusBean cBean;
////	//@Autowired
////	static CactusBean c1;
//	
//	@Autowired
//	CactusBean cb;
//	@Autowired
//	CourseBeanDao courseBD;
//	
//	
//	
//	
//	@GetMapping("/homeLoginPage")
//    public String loginPageAction() {
//		//System.out.println(c1.getName());
//    	return "index";
//    }
//	
//	
////	@RequestMapping(path = "/Login.controller", method = RequestMethod.GET)
////    public String loginPageAction2() {
////    	return "Login";
////    } 備用
//	
////	@PostMapping("/loginCheck.controller")
////	public String processAccountCheckAction(@RequestParam(name="username") String username, @RequestParam(name="password") String password, Model m) {
////		
////		Map<String, String> errors = new HashMap<String, String>();
////		m.addAttribute("e", errors);
////		
////		c1= cDao.unchangeableUser(username);//全域吃帳號
////		
////		boolean checkStatus = cDao.checkLogin(new CactusBean(username, password));
////		
////		if(checkStatus) {
////			
////				m.addAttribute("username", cDao.findByPrimaryKey2(username).getName());
////				System.out.println(c1.getUsername());
////				return "indexafterlogin";				
////			
////			
////		}		
////		errors.put("msg", "帳號密碼錯誤");
////		return "index";
////	}
//	
//	@PostMapping("/loginCheck.controller")
//	public String processAccountCheckAction2(@RequestParam(name="username") String username, @RequestParam(name="password") String password, Model m) {
//		
//		Map<String, String> errors = new HashMap<String, String>();
//		m.addAttribute("e", errors);
//		cb = cDao.findByUserName(username);
//				System.out.println(password);
//		boolean checkStatus = checkLogin(password, cb);
//		        System.out.println(cb.getUserId());
//		if(checkStatus) {	
//			CactusBean cactusBean = cDao.findByUserName(username);
//			m.addAttribute("cactusBean", cactusBean);
////			List<CourseBean> musiclist = courseBD.findCourseTypeOfMusic();
////			m.addAttribute("cactusCourse",musiclist);
//			List<CartBean> cartlist = cartServiceImpl.findAllCart();
//			m.addAttribute("cactus", cartlist);
//			return "indexafterlogin";
//		}		
//		errors.put("msg", "帳號密碼錯誤");
//		return "index";
//	}
//	
//	private boolean checkLogin(String password, CactusBean userInDB) {
//		if(password.equals(userInDB.getPassword())) {
//			System.out.println(userInDB.getPassword()+"..Test");
//			return true;
//		}
//		return false;
//	}
//	
//	/*
//	@ModelAttribute
//	public CactusBean getCactusBeanByUsername(CactusBean cactusBean) {
//		return cactusBean;
//	}
//	*/
////	@GetMapping("/showProfile")
////	public String beTeacherOrNot() {
////		if(c1==null) {
////			return "SignUp";
////		}
////		if(cDao.teacherQualification(c1.getUsername())) {
//////			System.out.println(c1.getUsername());
////			return "/showTeacherProfile";
////		}
////		//System.out.println(c1.getUsername());
////		return "/showProfile";
////	}		
//	
////	@GetMapping("/teacher")
////	public @ResponseBody CactusBean agreement() {
////		return cDao.findByUsername(c1.getUsername());
////		
////	}
////	@GetMapping("/information")
////	public @ResponseBody CactusBean showYourInformation() {
////		return cDao.findByUsername(c1.getUsername());
////	}
////	@GetMapping("/information1")
////	public @ResponseBody CactusBean beTeacher() {
////		cDao.findByUsername(c1.getUsername()).setQualificationOfTeacher("T");
////		return cDao.findByUsername(c1.getUsername());		
////	}
//	
//	
//	
//	
//	
//	
//}
//	
	
//	
//	
//	

