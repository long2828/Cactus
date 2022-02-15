package tw.cactus.mall.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.cactus.cart.model.CartBean;
import tw.cactus.login.model.CactusBean;
import tw.cactus.mall.repository.MallRepository;
import tw.cactus.model.SessionBean;

@Controller
public class MallController {
	
	public String i;
	
	@Autowired
	MallRepository mallrepositery;
			
	
	@GetMapping("/send")
	public String send(String i) {
		
		return "sendjsp";
	}
	
	@GetMapping("/qq")
	public String qqq(@RequestParam String i) throws UnsupportedEncodingException, MessagingException {
		mallrepositery.sendingEmail100(i);
		return "index";
	}
	
	
	


	
	
//	@GetMapping("/letmeScore")
//	public String letmeScore() {
//		
//		List<SessionBean> scorelist = mallrepositery.getTheScoreByCourseId();
//		//m.addAttribute("scorelist", scorelist);
//		return "checkScore";
//	}
}