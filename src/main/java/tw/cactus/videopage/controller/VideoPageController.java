package tw.cactus.videopage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.cactus.cart.model.CartBean;
import tw.cactus.course.model.CourseBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.model.SessionBean;
import tw.cactus.videopage.service.impl.VideoPageServiceImpl;

@Controller
@SessionAttributes("cactusBean")
public class VideoPageController {

	@Autowired
	VideoPageServiceImpl videoPageService;
	@Autowired
	CourseBean courseBean;
	@Autowired
	SessionBean session;

	@GetMapping("/testintro")
	public String goToLearn() {

		return "testintro";

	}

	@GetMapping("/musicvideopage/{courseId}")
	public String goToMusicPage01(@PathVariable(value = "courseId") Integer courseId, 
			 @ModelAttribute("cactusBean") CactusBean c1, Model m){
			
		List<SessionBean> getAppraiseList = videoPageService.getAppraiseByCourseIdId(courseId);
		m.addAttribute("getAppraiseList", getAppraiseList);

		courseBean = videoPageService.getCourseNameByCourseId(courseId);
		m.addAttribute("videoname", courseBean.getCourseName());
		m.addAttribute("Foldername", courseBean.getVideoPath());
		m.addAttribute("courseId", courseId);
		m.addAttribute("img", c1.getPhotopath());
		m.addAttribute("name", c1.getName());
		return "musicvideopage1";
	}

	@GetMapping("/saveScoreAndAppraise/{courseId}")
	public String goToMusicPage02(@PathVariable(value = "courseId") Integer courseId,
			@RequestParam(value = "score") Integer score, @RequestParam String appraise,@RequestParam String appraiseDate,
			@ModelAttribute("cactusBean") CactusBean c1, Model m) {

		videoPageService.saveScoreAndAppraise(score, appraise,c1, courseId,appraiseDate);
		m.addAttribute("courseId", courseId);
		return "spaceSuper";
	}

	@GetMapping("/musicvideopage02")
	public String goToMusicPage02() {

		return "musicvideopage02";
	}

}
