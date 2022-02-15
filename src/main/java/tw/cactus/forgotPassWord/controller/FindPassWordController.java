package tw.cactus.forgotPassWord.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.cactus.forgotPassWord.service.FindPassWordServiceInterface;
import tw.cactus.login.model.CactusBean;

@Controller
@SessionAttributes("email")
public class FindPassWordController {
	@Autowired
	EntityManager entityManager;

	@Autowired
	private FindPassWordServiceInterface findPassWordServiceInterface;

	@GetMapping("/forgotpassword")
	public String forgotPassword() {
		return "ForgotPassword";
	}
	
	@GetMapping("/sendnewpassword")
	public String sendnewpassword(@RequestParam String email,Model m) throws UnsupportedEncodingException, MessagingException {
			Map<String, String> errors = new HashMap<String, String>();
			m.addAttribute("e", errors);
			m.addAttribute("email", email);
					
			boolean checkStatus = findPassWordServiceInterface.checkByEmail(email);
			
			if(checkStatus) {
				findPassWordServiceInterface.sendForgotPasswordEmail(email);
				return "f1";
			}		
			errors.put("msg", "此信箱尚未註冊");
			return "ForgotPassword";
		}


	@GetMapping("/resetpassword")
	public String resetpassword() {

		return "Resetpassword";
	}

	@PostMapping("/resetpassword2")
	public String resetpassword(@RequestParam String password, @ModelAttribute("email") String email) {
		boolean flowCheck = false ;
		
		flowCheck = findPassWordServiceInterface.save(email, password);
		
		if(flowCheck) {
			return "index";
		}
		else {
			return "index";
		}
		//if成功 回傳成功頁面
		//if失敗 請他重設密碼
		

		//findPassWordServiceInterface.save(c1, password);
		
	}

}
