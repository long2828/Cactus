package tw.cactus.course.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.cactus.cart.model.CartBean;
import tw.cactus.course.model.CourseBean;
import tw.cactus.course.repository.CourseRepository;
import tw.cactus.course.service.CourseService;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;

@Controller
@SessionAttributes("cactusBean")
public class CourseController {

//    @Autowired
//    private CactusBeanDao cDao;
    @Autowired
    private CactusBean cBean;
    @Autowired
    private CourseService courseService;
    @Autowired
    CourseBean courseBean;

    
	@GetMapping("/upload")//上傳頁面
    public String test2() {

        return "uploadVideoTest";
    }

    
//	@GetMapping("/VideoTest")//上傳後送出
//    public String uploadvideo(@RequestParam(name="courseName") String courseName,
//            @RequestParam(name="courseType") String courseType,
//            @RequestParam(name="video") String path,
//            @RequestParam(name="imgpath") String imgpath,
//            @RequestParam(name="price") Integer price,
//            @RequestParam(name="description") String description,
//            @RequestParam(name="launched") String launched, @ModelAttribute("cactusBean") CactusBean c1) throws IOException{
//    	 
//		courseService.upload(path,imgpath,description,courseName,courseType,price,launched,c1);
//        return "indexafterlogin";
//    }
    
   
	@GetMapping("/course/{courseId}")
    public String gocourse(@PathVariable(value = "courseId" ) Integer courseId,Integer score,String appraise,Integer USER_ID,Integer orderId,Model m) {

     courseBean= courseService.findcourse(courseId);

        m.addAttribute("course",courseBean);
        m.addAttribute("images",courseBean.getImage());

        long a =  courseService.findappraise(appraise,courseId);

        m.addAttribute("appraise",a);

        double b = courseService.findscore(score,courseId);

        m.addAttribute("score",b);

        long c =  courseService.findvideo(USER_ID,courseId);

        m.addAttribute("USER_ID",c);

        long d =  courseService.findstudent(orderId,courseId);

        m.addAttribute("courseId",d);

        System.out.println(courseBean);
        
        List<SessionBean> courseList = courseService.getAppraiseByCourseIdId(courseId);
        m.addAttribute("QQ",courseList);
       
        

        System.out.println(a);
        return "/testintro";
    }
	
//	首頁下方前三名課程排序
//	@GetMapping("/topthree")
//	public String topthreeCourse(Model m) {	
//		List<CourseBean> courselist = courseService.findTopThree();
////		for(int i = 0; i < courselist.size(); i++) {
////		System.out.println(courselist.get(i).getCourseId());
////		}
//		m.addAttribute("top3", courselist);
//		return "indexafterlogin";
//	}
}
