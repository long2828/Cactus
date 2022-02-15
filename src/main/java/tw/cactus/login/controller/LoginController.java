package tw.cactus.login.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import tw.cactus.cart.model.CartBean;
import tw.cactus.cart.service.impl.CartServiceImpl;
import tw.cactus.course.model.CourseBean;
import tw.cactus.course.service.CourseService;
import tw.cactus.login.model.CactusBean;
import tw.cactus.login.service.LoginServiceInterface;
import tw.cactus.model.SessionBean;
//20210830 0427

@Controller
@SessionAttributes("cactusBean")
public class LoginController {
	
	@Autowired
	LoginServiceInterface loginServiceInterface;
	@Autowired 
	CactusBean cactusBean;
	@Autowired
	CartServiceImpl cartServiceImpl;
	@Autowired
	CourseService courseservice;
	 
	@GetMapping({"/homeLoginPage", "/"})
    public String loginPageAction() {
		//System.out.println(c1.getName());
    	return "index";
    }
	
	@GetMapping("/toIndex")
    public String toIndex(Model m,@ModelAttribute("cactusBean") CactusBean cactusBean) {
        List<CartBean> cartlist = cartServiceImpl.findYourSelfCart(cactusBean);//正確要找自己的購物車 而不是findAllCart()
        m.addAttribute("cactus", cartlist);
        m.addAttribute("cactusBean", cactusBean);
//        List<CourseBean> courselist = courseservice.findTopThree();
//		m.addAttribute("top3", courselist);
        return "indexafterlogin";
    }
	
	//Ajax練習
		@GetMapping("/ajax/C_members")
		public String getCactusMembers2() {
			return "/ajaxCMember";
		}
		//Ajax練習
		@GetMapping("/testt")
		public @ResponseBody CactusBean getCactusMembersajax(){
			return cactusBean;
		}
	
	
	
	@PostMapping("/loginCheck.controller")
	public String processAccountCheckAction(@RequestParam(name="username") String username, @RequestParam(name="password") String password, Model m) {
		
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("e", errors);
				
		boolean checkStatus = loginServiceInterface.checkLogin(username, password);
		
		cactusBean = loginServiceInterface.findByUserName(username); //接值
		if(cactusBean==null) {
			errors.put("msg", "帳號密碼錯誤");
			return "index";
		}
			
		if(cactusBean.isEnabled()==false) {
			errors.put("msg", "請驗證您的帳號");
			return "index";
		}
		if(cactusBean.isPermission()==false) {
			errors.put("msg", "帳號已被封鎖,請聯絡客服人員");
			return "index";
		}
		if(checkStatus) {
//			List<SessionBean> sTop1 = courseservice.findTopCourse1(); //找最受歡迎還沒寫好
//			System.out.println(sTop1.get(0).getCourseBean().getCourseName());
//			SessionBean sTop1 = courseservice.findTopCourse(); //找最受歡迎還沒寫好
//			System.out.println(sTop1.getCourseBean().getCourseName());
			
			List<CartBean> cartlist = cartServiceImpl.findYourSelfCart(cactusBean);
			m.addAttribute("cactus", cartlist);
			m.addAttribute("cactusBean", cactusBean); //傳值
//			List<CourseBean> courselist = courseservice.findTopThree();
//			m.addAttribute("top3", courselist);
			return "indexafterlogin";
		}
		errors.put("msg", "帳號密碼錯誤");
		return "index";
	}
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session,SessionStatus status){
		session.getAttribute("cactusBean");
		status.setComplete();
		return "/index";
	}
		
	
	
	
	
//	 @GetMapping(value = "/user")
//	    public Principal user(Principal principal) throws JsonGenerationException, JsonMappingException, IOException {
//	     System.out.println(principal.toString());
//	        ObjectMapper mapper = new ObjectMapper();
//	         String user = mapper.writeValueAsString(principal);
//	         System.out.println(user);
//	       return principal;
//	    }
//	 @GetMapping(value = "/username")
//	    
//	    public String currentUserName(Authentication authentication) {
//	        return "indexafterlogin";
//	    }
}
