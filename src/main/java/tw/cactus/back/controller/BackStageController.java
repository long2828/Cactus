package tw.cactus.back.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;

import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;
import tw.cactus.back.model.CMemberBean;
import tw.cactus.back.repository.CactusRepository;
import tw.cactus.back.service.CactusService;
import tw.cactus.back.service.impl.CactusServiceImpl;
import tw.cactus.cart.model.CartBean;
import tw.cactus.course.model.CourseBean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("cmemberBean")
public class BackStageController {

	@Autowired
	CactusService cactusService;
	@Autowired
	CactusBean cactusBean;

	@Autowired
	CMemberBean cmemberBean;

	@Autowired
	CactusServiceImpl cactusServiceImpl;

	@Autowired
	CactusRepository cactusRepository;
	
	@Autowired
	CourseBean courseBean;

//	@GetMapping("/ajaxtest/C_members")
//	public String ajaxtest(Model m) {
//		List<CactusBean> clist = cactusService.findCMembers();
//		m.addAttribute("cactus",clist);
//		return "/ajaxCmember";
//	}

//	@GetMapping("/back")
//	public String backindex() {
//		return "/backindex";
//	}
	// 登入

	@GetMapping("/back")
	public String processAccountCheckAction() {

		return "backindex222222";
	}

	@PostMapping("/backindex222222")
	public String memberLogin(@RequestParam(name = "memberName") String memberName,
			@RequestParam(name = "password") String password, Model m) {

		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("e", errors);

		boolean checkStatus = cactusService.checkLogin(memberName, password);

		cmemberBean = cactusRepository.loadByMemberName(memberName); // 接值

		if (checkStatus) {

			m.addAttribute("cmemberBean", cmemberBean); // 傳值
			return "backindex";
		}
		errors.put("msg", "帳號密碼錯誤");

		return "backindex";
	}

	// 找所有員工
	@GetMapping({ "/C_members" })
	public String getCactusMembers(Model m) {
		List<CMemberBean> clist = cactusService.findCMembers();

		m.addAttribute("XX", clist);
		return "/allCmember";
	}

//	@GetMapping("/Put_CC_member/{mm.memberName}")
//	public String updateMembers(@PathVariable(value = "memberId") Integer memberId,
//			@RequestParam(name="memberName") String memberName,@RequestParam(name="name") String name, 
//			@RequestParam(name="password") String password){
//
//		cactusService.updateCMember(memberName,name,password);				
//		return "/place";
//    }

	// 找所有會員
	@GetMapping({ "/C_users" })
	public String getCactusUsers(Model m) {
		List<CactusBean> clist = cactusService.findUsers();
		m.addAttribute("QQ", clist);
		return "/allUsers";
	}

//    //修改會員資料	
//	@GetMapping("/Put_C_member/{username}")
//	public String goToUpdate(Model m) {
//		CactusBean c1 = cactusService.updateUser(Model m);
//
//		return "/Revise";
//	}

	@PutMapping("Put_C_member/{username}")
	public String update(@PathVariable(value = "username") String username, @RequestParam(name = "name") String name,
			@RequestParam(name = "email") String email, @RequestParam(name = "password") String password,
			@RequestParam(name = "birth") String birth, @RequestParam(name = "cellphone") String cellphone,
			@RequestParam(name = "gender") String gender
	/* @RequestParam String verification_code, @RequestParam Boolean enabled */ ) {

		cactusService.updateUser(username, name, email, password, birth, cellphone,
				gender/* ,verification_code,enabled */);
		return "/space";
	}

	// 找所有影片
	@GetMapping("/getAllCourse")
	public String getAllCourse(Model m) {
		List<CourseBean> clist = cactusService.findCourse();
		m.addAttribute("course", clist);
		return "/backcourse";
	}
	
	@GetMapping("/blockvideo/{courseId}")
	public String blockvideoController(@PathVariable(value = "courseId") Integer courseId,Model m) {
		cactusService.blockvideo(courseId);
		m.addAttribute("blockVideoId",courseId);
		return "/blockvideo";
	}
	
//	@GetMapping("/blocktext/{userId}")
//	public String toBlockVideo(@PathVariable(value = "userId") Integer userId, Model m) {
//        
//		return "/blocktext";
//	}
	@GetMapping("/sendblockvideomessage/{courseId}")  
	public String sendblockmessageToVideoUser(@PathVariable(value = "courseId") Integer courseId, @RequestParam(name = "reason") String reason)throws UnsupportedEncodingException, MessagingException{
		System.out.println("courseId:"+courseId);	
		System.out.println("reason:"+reason);	
		
			boolean checkStatus = cactusServiceImpl.sendBlockEmail(courseId,reason);
			
			if(checkStatus) {				
				return "/place";
			}		
//			errors.put("msg", "請輸入內容");
			return "/blockvideo";
		}
	
	@GetMapping("/unblockvideo/{courseId}")
	public String unblockvideoController(@PathVariable(value = "courseId") Integer courseId) {
		cactusService.unblockvideo(courseId);
		return "/place";
	}

	

	// 找所有購買紀錄
	@GetMapping("/getAllSession")
	public String getAllSession(Model m) {
		List<SessionBean> clist = cactusService.findSession();
		m.addAttribute("session", clist);
		return "/backsession";
	}

//	//Ajax練習
//	@GetMapping("/ajax/C_members")
//	public String getCactusMembers2() {
//		return "/ajaxCMember";
//	}
//	//Ajax練習
//	@GetMapping("/ajax/CC_members")
//	public @ResponseBody List<CactusBean> getCactusMembersajax(){
//		return cactusService.findCMembers();
//	}
//	 封鎖
	@GetMapping("/blockuser/{userId}")
	public String blockadeController(@PathVariable(value = "userId") Integer userId, Model m) {
		cactusService.blockade(userId);
		m.addAttribute("blockUserID",userId);
		return "/blocktext";
	}
	

//	@GetMapping("/blocktext/{userId}")
//	public String blockadeController(@PathVariable(value = "userId") Integer userId) {
//		cactusService.blockade(userId);
//		return "/space";
//	}

	// 解除員工封鎖
	@GetMapping("/unblockuser/{userId}")
	public String unblockController(@PathVariable(value = "userId") Integer userId) {
		cactusService.unblock(userId);
		return "/space";
	}

//	@DeleteMapping("/Delete_C_member/{userId}")
//	public String deleteCactusDao(@PathVariable(value = "userId") Integer userId)
//	{
//		cactusService.deleteCactus(userId);
//		return "/space";
//	}
//	

	@GetMapping("/Put_CC_member/{username}")
    public String backindextest(@PathVariable(value = "username" ) String username, Model m) {
        cactusBean = cactusService.findByUserName(username);
        m.addAttribute("username", cactusBean);
        return "/Revise";
	}

	@GetMapping("/sendblockmessage/{userId}")  
	public String sendblockmessageToUser(@PathVariable(value = "userId") Integer userId, @RequestParam(name = "reason") String reason)throws UnsupportedEncodingException, MessagingException{
		System.out.println("userId:"+userId);	
		System.out.println("reason:"+reason);	
		
			boolean checkStatus = cactusServiceImpl.sendBlockEmail(userId,reason);
			
			if(checkStatus) {				
				return "/space";
			}		
//			errors.put("msg", "請輸入內容");
			return "/blocktext";
		}
	@GetMapping("/getRevenue")
	public String RevenuePage() {
		return "Revenue";
	}
	//
	@GetMapping("/getMonthRevenue")
	public String getAllMonthRevenue(@RequestParam(value = "month") String month,Model m) {
		List<SessionBean> sb = cactusServiceImpl.findMonthIncome(month);		
		m.addAttribute("monthR", sb);
		int total=0;
		for(int i=0; i<sb.size()  ; i++)
		{
			total += (sb.get(i).getCourseBean().getPrice()/2);
			
		}
		m.addAttribute("total", total);
		return "MonthRevenue";
	}
	
	

}
