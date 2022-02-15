package tw.cactus.profile.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.cactus.cart.service.impl.CartServiceImpl;
import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.login.service.LoginServiceInterface;
import tw.cactus.model.SessionBean;
import tw.cactus.profile.repository.ProfileRepositoryInterface;
import tw.cactus.profile.repository.impl.ProfileRepository;
import tw.cactus.profile.service.ProfileServiceInterface;

@Controller
@SessionAttributes("cactusBean")
public class profileController {

	@Autowired
	ProfileServiceInterface profileServiceInterface;
	@Autowired
	LoginServiceInterface loginServiceInterface;
	@Autowired 
	CactusBean cactusBean;
	@Autowired
	CartServiceImpl cartServiceImpl;
	@Autowired
	ProfileRepositoryInterface profileRepositoryinterface;
	@Autowired
	ProfileRepository ProfileRepository;
	@GetMapping("/showYourProfile")//個人資料
	public String profile(Model m,@ModelAttribute("cactusBean") CactusBean cactusBean) throws ParseException {
		m.addAttribute("profile",loginServiceInterface.loadByUsername(cactusBean.getUsername()));
	
		if(profileServiceInterface.everBought(cactusBean)==true) {
			if(profileServiceInterface.expiration(cactusBean)==true) {
				return "showYourProfileTeacher"; 
			}
			return "showYourProfileInvalidTeacher";
		}
		return "showYourProfile"; 
		
		  			
		
    }
	
	@GetMapping("/reviseYourProfile")//修改個人資料頁面
	public String reviseYourInformation(Model m,@ModelAttribute("cactusBean") CactusBean cactusBean) throws ParseException {
		
		m.addAttribute("reviseProfile",loginServiceInterface.loadByUsername(cactusBean.getUsername()));
		if(profileServiceInterface.everBought(cactusBean)==true) {
			if(profileServiceInterface.expiration(cactusBean)==true) {
				return "reviseYourInformationTeacher"; 
			}
			return "reviseYourInformationInvalidTeacher";
		}
		return "reviseYourInformation"; 
		
    }
	
//	@GetMapping("/reviseYourPassword")//修改密碼頁面
//	public String reviseYourPassword() {
//		return "reviseYourPassword";   	
//    }
	
//	@GetMapping("/reviseYourProfileTeacher")//修改密碼頁面
//	public String reviseYourInformationTeacher(Model m,@ModelAttribute("cactusBean") CactusBean cactusBean) {
//		m.addAttribute("reviseProfile",loginServiceInterface.loadByUsername(cactusBean.getUsername()));
//		return "reviseYourInformationTeacher";   	
//    }
	
//	@GetMapping("/submitYourPassword")//按送出修改密碼
//	public String submitYourPassword(
//			@RequestParam(name="password") String password,
//			@RequestParam(name="password1") String password1) {
//		return "submitYourPassword";   	
//    }
	
	@GetMapping("/submitYourProfile")//按送出修改會員資料
	public String submitYourInformation(@RequestParam(name="name") String name,
			@RequestParam(name="gender") String gender,
			@RequestParam(name="birth") String birth,
			@RequestParam(name="email") String email,
			@RequestParam(name="cellphone") String cellphone,
			@RequestParam(name="intro") String intro,
			@ModelAttribute("cactusBean") CactusBean cactusBean) {
		profileServiceInterface.reviseInformation(cactusBean.getUsername(), name, birth, cellphone, email, intro, gender);
		return "space001";   	
    }
	
//	@GetMapping("/sessionRecords")//購買紀錄
//	public String sessionRecord(@ModelAttribute("cactusBean") CactusBean cactusBean, Model m) {
//		List<SessionBean> memberSessions = profileServiceInterface.loadSessionsByUserName(cactusBean.getUserId());
//		m.addAttribute("sessions", memberSessions);
//		return "sessionRecord";
//	}
	
	@GetMapping("/uploadCourse")//上傳課程
	public String uploadCourse() {
		return "uploadCourse";
	}
	
	@GetMapping("/VideoTest")//上傳後送出
    public String uploadvideo(Model m, @RequestParam(name="courseName") String courseName,
            @RequestParam(name="courseType") String courseType,
            @RequestParam(name="video") String path,
            @RequestParam(name="imgpath") String imgpath,
            @RequestParam(name="price") Integer price,
            @RequestParam(name="description") String description,
            @ModelAttribute("cactusBean") CactusBean c1) throws IOException, ParseException{
    	 
		profileServiceInterface.uploadVideo(path,imgpath,description,courseName,courseType,price,c1);
		m.addAttribute("course",profileServiceInterface.findMyUploadCourses(c1));

		if(profileServiceInterface.everBought(c1)==true) {
			if(profileServiceInterface.expiration(c1)==true) {
				return "uploadCourseListTeacher"; 
			}
			return "uploadCourseListInvalidTeacher";
		}		
		return "uploadCourseListInvalidTeacher";//之後要改為課程管理頁面
    }
	
	@GetMapping("/RevisePhoto")//修改頭貼頁面
	public String RevisePhoto(@ModelAttribute("cactusBean") CactusBean cactusBean) throws ParseException {
		if(profileServiceInterface.everBought(cactusBean)==true) {
			if(profileServiceInterface.expiration(cactusBean)==true) {
				return "reviseYourPhotoTeacher"; 
			}
			return "reviseYourPhotoInvalidTeacher";
		}
			
		return "reviseYourPhoto";
	}
	
//	@GetMapping("/RevisePhotoTeacher")//修改頭貼頁面
//	public String RevisePhotoTeacher() {
//		return "reviseYourPhotoTeacher";
//	}
	
	@GetMapping("/uploadPhoto")//上傳新頭貼後送出
    public String uploadPhoto(
            @RequestParam(name="imgpath") String imgpath,           
            @ModelAttribute("cactusBean") CactusBean c1) throws IOException{    	 
		profileServiceInterface.uploadPhoto(imgpath,c1);
        return "space001";
    }
	
	
//	@GetMapping("/toIndex")//返回首頁
//	public String toIndex(Model m,@ModelAttribute("cactusBean") CactusBean cactusBean) {
//		List<CartBean> cartlist = cartServiceImpl.findYourSelfCart(cactusBean);//正確要找自己的購物車 而不是findAllCart()	
//		m.addAttribute("cactus", cartlist);
//		m.addAttribute("cactusBean", cactusBean);
//		return "indexafterlogin";
//	}
	
	@GetMapping("/coursesList")//管理上傳課程
	public String coursesList(Model m,@ModelAttribute("cactusBean") CactusBean cactusBean) throws ParseException {
		m.addAttribute("course",profileServiceInterface.findMyUploadCourses(cactusBean));
		if(profileServiceInterface.everBought(cactusBean)==true) {
			if(profileServiceInterface.expiration(cactusBean)==true) {
				return "uploadCourseListTeacher"; 
			}
			return "uploadCourseListInvalidTeacher";
		}		
		return "uploadCourseListInvalidTeacher";
	}
	
	@GetMapping("/reviseCoursesList/{courseId}")//修改課程
	public String reviseCourse(@PathVariable(value = "courseId") Integer courseId,Model m,@ModelAttribute("cactusBean") CactusBean cactusBean) throws ParseException {
		CourseBean courseBean = profileRepositoryinterface.findMyCourses(courseId);
        m.addAttribute("mycourses", courseBean);
        if(profileServiceInterface.everBought(cactusBean)==true) {
			if(profileServiceInterface.expiration(cactusBean)==true) {
				return "modifyvideo";
			}
			 return "modifyvideoInvalidTeacher";
        }
        return "modifyvideoInvalidTeacher";
	}
	
//	  @GetMapping("/putvideo/{courseId}")
//	    public String putvideo(@PathVariable(value = "courseId") Integer courseId,Model m) {
//
//	        CourseBean courseBean = mallrepositery.findMyCourses(courseId);
//	        m.addAttribute("mycourses", courseBean);
//	        return "revisevideo";
//	    }

//	    @GetMapping("/ccc/{courseId}")
//	    public String ccc(@PathVariable(value = "courseId") Integer courseId, @RequestParam String courseName,
//	            @RequestParam String course_type,@RequestParam String launched,@RequestParam Integer price,@RequestParam String image) {
//
//	        mallrepositery.cccUpdate(courseId,courseName,course_type,launched,price,image);
//
//
//	        return "ccc";
//	    }
	
	
	
	@GetMapping("/income")//收入
    public String income(Model m,@ModelAttribute("cactusBean") CactusBean cactusBean, Integer courseId) throws ParseException {
        long total = 0L;
        List<CourseBean> list = ProfileRepository.findmoney(cactusBean);
        for(int i =0;i<list.size();i++) {
            list.get(i).setTotal(Long.toString(ProfileRepository.catchTotal(list).get(i)));
         list.get(i).setPoint(Long.toString(ProfileRepository.eachSessionTotal(cactusBean).get(i)));
         long sessiontotal = ProfileRepository.eachSessionTotal(cactusBean).get(i);
         total += sessiontotal;
        }
         m.addAttribute("total",total);
         m.addAttribute("income",list);


         if(profileServiceInterface.everBought(cactusBean)==true) {
             if(profileServiceInterface.expiration(cactusBean)==true) {
                 return "income002"; 
             }
             return "income001";
         }

         return "income001";
        }
    
	
	@GetMapping("/teacherVerify")//教師認證
	public String teacherVerify(@ModelAttribute("cactusBean") CactusBean cactusBean) throws ParseException {	
		if(profileServiceInterface.everBought(cactusBean)==true)
			return "memberbeInvalidteacher";
		return "memberbeteacher";
	}
	
	@GetMapping("/payForTeacher")//成為教師付款
	public String home(@ModelAttribute("cactusBean") CactusBean cactusBean) throws Exception {
    	profileServiceInterface.typeOfTeacher(cactusBean);
    	profileServiceInterface.setAllCoursesToTrue(cactusBean);
		return "beTeacher";
	}
	
	@GetMapping("/payForTeacher1")//成為教師付款
	public String home2(@ModelAttribute("cactusBean") CactusBean cactusBean) throws Exception {
    	profileServiceInterface.typeOfTeacher(cactusBean);
    	profileServiceInterface.setAllCoursesToTrue(cactusBean);
		return "indexafterlogin";
	}
	
	
	@GetMapping("/sessionRecord")//購買紀錄
	public String getMycourse(Model m ,@ModelAttribute("cactusBean") CactusBean c) throws ParseException {
		
		List<SessionBean> alist = profileServiceInterface.findByUserCourse(c);
		m.addAttribute("membersession",alist);
		System.out.println(c.getUsername());
		if(profileServiceInterface.everBought(c)==true) {
			if(profileServiceInterface.expiration(c)==true) {
				return "mylearnTeacher"; 
			}
			return "mylearnInvalidTeacher";
		}
		return "mylearn"; 
	}
	
	
    @GetMapping("/reviseVideoBackToCoursesList/{courseId}")//影片修改後送出
    public String ccc(Model m,
    		@PathVariable(value = "courseId") Integer courseId,
    		@RequestParam(name="courseName") String courseName,
            @RequestParam(name="description") String description,
            @RequestParam(name="courseType") String courseType,
            @RequestParam(name="price") Integer price,
            @RequestParam(name="imgpath") String imagePath,
            @RequestParam(name="video") String videoPath,
            @ModelAttribute("cactusBean") CactusBean cactusBean) throws ParseException {

    	profileServiceInterface.updateVideo(courseId,courseName,description,courseType,price,imagePath,videoPath);


		m.addAttribute("course",profileServiceInterface.findMyUploadCourses(cactusBean));
		if(profileServiceInterface.everBought(cactusBean)==true) {
			if(profileServiceInterface.expiration(cactusBean)==true) {
				return "uploadCourseListTeacher"; 
			}
			return "uploadCourseListInvalidTeacher";
		}		
		return "uploadCourseListInvalidTeacher";
	}
    
    @GetMapping("/ajaxmonth")
    public @ResponseBody List<Integer> monthmoney(@ModelAttribute("cactusBean") CactusBean cactusBean) {
//        List<String> month = new ArrayList<String>();
//        for(int i =0;i<ProfileRepository.incomeIndividual(cactusBean).size();i++) {
//            month.add(Integer.toString(ProfileRepository.incomeIndividual(cactusBean).get(i)));
//        }
//		List<SessionBean> month2 = (List<SessionBean>) new ArrayList<SessionBean>(); 
		
//		for(int i =0;i<month.size();i++) {
//			SessionBean s1 = new SessionBean();
//			s1.setPurchaseDate(month.get(i));
//            month2.add(s1);
//        }
//		for(int i =0;i<month2.size();i++) {
//        System.out.println(month2.get(i).getPurchaseDate());
//		}
//		 System.out.println(month.get(0));
        return ProfileRepository.incomeIndividual(cactusBean);
    }
	
	
//	@GetMapping("/modifyVideo")//修改影片
//	public String modifyVideo() {
//		return "modifyvideo";
//	}
	
	
	
}
