package tw.cactus.serch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.cactus.course.model.CourseBean;
import tw.cactus.model.SessionBean;
import tw.cactus.serch.repository.SerchRepository;



@Controller
@SessionAttributes("cactusBean")
public class SerchController {
	
	@Autowired
	SerchRepository SerchRepository;
    @Autowired
    CourseBean coursebean;
    @Autowired
    SessionBean sessionbean;
    
    @GetMapping("/findByNameLike")
    public String findByNameLike(String courseName,Model m) {
    	System.out.println("=====courseName: " + courseName);
    	List<CourseBean>  list =SerchRepository.findByCourseNameLike("%"+courseName+"%");
    	System.out.println("查詢結果筆數:" + list.size());
    	m.addAttribute("courseName",courseName);
        m.addAttribute("course",list);
        return "/serch";
    }
    
    
}
