package tw.cactus.paypal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;

import tw.cactus.login.model.CactusBean;
import tw.cactus.profile.service.ProfileServiceInterface;

@Controller
@SessionAttributes("cactusBean")
public class PaypalController {

	@Autowired
	PaypalService service;
	
	@Autowired
	ProfileServiceInterface profileServiceInterface;

	public static final String SUCCESS_URL = "/pay/success";
	public static final String CANCEL_URL = "/pay/cancel";

	@GetMapping("/paypal")
	public String home() {
		return "home";
	}
	

	@PostMapping("/pay")
	public String payment(@ModelAttribute("order") Order order,@ModelAttribute("cactusBean") CactusBean cactusBean) throws Exception {
		try {
			Payment payment = service.createPayment(order.getPrice(), order.getCurrency(), order.getMethod(),
					order.getIntent(), order.getDescription(), "http://localhost:8080/cactus/" + CANCEL_URL,
					"http://localhost:8080/cactus/" + SUCCESS_URL);
			for(Links link:payment.getLinks()) {
				if(link.getRel().equals("approval_url")) {
					return "redirect:"+link.getHref();
				}
			}
			
		} catch (PayPalRESTException e) {
		
			e.printStackTrace();
		}


		return "indexafterlogin";
	}
	
	 @GetMapping(value = CANCEL_URL)
	    public String cancelPay() {
	        return "teacherVerify";
	    }

	    @GetMapping(value = SUCCESS_URL)
	    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId,@ModelAttribute("cactusBean") CactusBean cactusBean) throws Exception {
	        try {
	            Payment payment = service.executePayment(paymentId, payerId);
	            System.out.println(payment.toJSON());
	            if (payment.getState().equals("approved")) {

	                return "indexafterlogin";
	            }
	        } catch (PayPalRESTException e) {
	         System.out.println(e.getMessage());
	        }

	        return "indexafterlogin";
	    }

}
