package tw.cactus.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.cactus.cart.model.CartBean;
import tw.cactus.cart.repository.CartRepository;
import tw.cactus.cart.repository.impl.CartRepositoryImpl;
import tw.cactus.cart.service.CartService;
import tw.cactus.cart.service.impl.CartServiceImpl;
import tw.cactus.course.model.CourseBean;
import tw.cactus.course.service.CourseService;
import tw.cactus.login.model.CactusBean;


@Controller
@SessionAttributes("cactusBean")
public class CartControll {

	@Autowired
	CartService cartService;
//	@Autowired
//	CartRepositoryImpl cartRepositoryImpl;
	@Autowired
	CartBean cartBean;
	
	
	@Autowired
	CourseService courseService;

//	@GetMapping({"/C_members","/back"})
//	public String getCactusMembers(Model m) {
//		List<CactusBean> clist = CartBDao.findCMembers();
//		m.addAttribute("cactus",clist);
//		return "/backindex";
//	}
	
	@GetMapping("/indexafterlogin")
    public String loginPageAction2(Model m,@ModelAttribute("cactusBean") CactusBean c1 ) {
		
		List<CartBean> cartlist = cartService.findYourSelfCart(c1);//正確要找自己的購物車 而不是findAllCart()
		System.out.println(c1.getUsername());
		m.addAttribute("cactus", cartlist);
    	return "indexafterlogin";
    }

	@GetMapping("/cart")
	public String goToCart(Model m) {
		
		List<CartBean> cartlist = cartService.findAllCart();
//		System.out.println(c1.getUsername());
		m.addAttribute("cactus", cartlist);
		return "cart";
	}
	

	//首頁小購物車的刪除
	@GetMapping("/delete/{cartId}")
	public String deleteoriginal(@PathVariable(value = "cartId") Integer cartId) {

		cartService.remove(cartId);

		return "space2";
	}
	
	@GetMapping("/deletecoding/{cartId}")
	public String deletecoding(@PathVariable(value = "cartId") Integer cartId) {

		cartService.remove(cartId);

		return "returncoding";
	}
	
	@GetMapping("/deletesport/{cartId}")
	public String deletesport(@PathVariable(value = "cartId") Integer cartId) {

		cartService.remove(cartId);

		return "returnsport";
	}
	
	@GetMapping("/deletemusic/{cartId}")
	public String deletemusic(@PathVariable(value = "cartId") Integer cartId) {

		cartService.remove(cartId);

		return "returnmusic";
	}
	
	@GetMapping("/deletelan/{cartId}")
	public String deletelan(@PathVariable(value = "cartId") Integer cartId) {

		cartService.remove(cartId);

		return "returnlan";
	}
	
	@GetMapping("/deleteeconomy/{cartId}")
	public String deleteeconomy(@PathVariable(value = "cartId") Integer cartId) {

		cartService.remove(cartId);

		return "returneconomy";
	}
	
	
	@GetMapping("/deletfree/{cartId}")
	public String deletefree(@PathVariable(value = "cartId") Integer cartId) {

		cartService.remove(cartId);

		return "returnfree";
	}
	
	
	
	//結帳頁面購物車的刪除
		@GetMapping("/deletetestbuy/{cartId}")
		public String deletFromtestbuy(@PathVariable(value = "cartId") Integer cartId) {

			cartService.remove(cartId);

			return "space2testbuy";
		}
	
		 @GetMapping("/typeofmusic")
		    public String getCactusMusic(Model m , @ModelAttribute("cactusBean")CactusBean cactusBean) {
			 
			 	List<CartBean> cartlist = cartService.findYourSelfCart(cactusBean);
				m.addAttribute("cactus", cartlist);
		        List<CourseBean> musiclist = courseService.findCourseTypeOfMusic();
		        m.addAttribute("cactusCourse",musiclist);
		        for(int i =0;i<musiclist.size();i++) {
		            musiclist.get(i).setTotal(Long.toString(courseService.catchTotalPurched(musiclist).get(i)));
		        }
		        m.addAttribute("cactusCourse",musiclist);
		        return "music03";
		    }
		        
		    
		    @GetMapping("/typeofcoding")
		    public String getCactusCode(Model m, @ModelAttribute("cactusBean")CactusBean cactusBean) {
		       
		    	List<CartBean> cartlist = cartService.findYourSelfCart(cactusBean);
				m.addAttribute("cactus", cartlist);
		    	List<CourseBean> codelist = courseService.findCourseTypeOfCoding();
		        m.addAttribute("cactusCourse",codelist);
		        for(int i =0;i<codelist.size();i++) {
		        	codelist.get(i).setTotal(Long.toString(courseService.catchTotalPurched(codelist).get(i)));
		        }
		        m.addAttribute("cactusCourse",codelist);
		        return "coding01";
		    }
		        
		    
		    @GetMapping("/typeofsport")
		    public String getCactusSport(Model m, @ModelAttribute("cactusBean")CactusBean cactusBean) {
		       
		    	List<CartBean> cartlist = cartService.findYourSelfCart(cactusBean);
				m.addAttribute("cactus", cartlist);
		    	List<CourseBean> sportlist = courseService.findCourseTypeOfSport();
		        m.addAttribute("cactusCourse",sportlist);
		        m.addAttribute("cactusCourse",sportlist);
		        for(int i =0;i<sportlist.size();i++) {
		        	sportlist.get(i).setTotal(Long.toString(courseService.catchTotalPurched(sportlist).get(i)));
		        }
		        m.addAttribute("cactusCourse",sportlist);
		        return "sport02";
		    }
		        
		    
		    @GetMapping("/typeoflan")
		    public String getCactusLan(Model m, @ModelAttribute("cactusBean")CactusBean cactusBean) {
		      
		    	List<CartBean> cartlist = cartService.findYourSelfCart(cactusBean);
				m.addAttribute("cactus", cartlist);
		    	List<CourseBean> lanlist = courseService.findCourseTypeOfLan();
		        m.addAttribute("cactusCourse",lanlist);
		        m.addAttribute("cactusCourse",lanlist);
		        for(int i =0;i<lanlist.size();i++) {
		        	lanlist.get(i).setTotal(Long.toString(courseService.catchTotalPurched(lanlist).get(i)));
		        }
		        m.addAttribute("cactusCourse",lanlist);
		        return "lan04";
		    }
		        
		    
		    @GetMapping("/typeofeconomy")
		    public String getCactusEconomy(Model m, @ModelAttribute("cactusBean")CactusBean cactusBean) {
		       
		    	List<CartBean> cartlist = cartService.findYourSelfCart(cactusBean);
				m.addAttribute("cactus", cartlist);
		    	List<CourseBean> economylist = courseService.findCourseTypeOfEconomy();
		        m.addAttribute("cactusCourse",economylist);
		        m.addAttribute("cactusCourse",economylist);
		        for(int i =0;i<economylist.size();i++) {
		        	economylist.get(i).setTotal(Long.toString(courseService.catchTotalPurched(economylist).get(i)));
		        }
		        m.addAttribute("cactusCourse",economylist);
		        return "economy05";
		    }
		        
		    
		    @GetMapping("/typeoffree")
		    public String getCactusFree(Model m, @ModelAttribute("cactusBean")CactusBean cactusBean) {
		       
		    	List<CartBean> cartlist = cartService.findYourSelfCart(cactusBean);
				m.addAttribute("cactus", cartlist);
		    	List<CourseBean> freelist = courseService.findCourseTypeOfFree();
		        m.addAttribute("cactusCourse",freelist);
		        for(int i =0;i<freelist.size();i++) {
		        	freelist.get(i).setTotal(Long.toString(courseService.catchTotalPurched(freelist).get(i)));
		        }
		        m.addAttribute("cactusCourse",freelist);
		        return "free06";
		    }
		
	@GetMapping("/typeofmusic/{courseId}")	
	public String goBuyVideo1(@PathVariable(value = "courseId" ) Integer courseId, @ModelAttribute("cactusBean") CactusBean c, Model m) {

		//cartService.notRepeatingInTheCar(courseId);
		
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("e", errors);
							//"msge", "請勿重複加入購物車"
		boolean judge =	cartService.notRepeatingInTheCar(courseId,c);
		if( judge ) {
			
			//未完成,此處還要呼叫存入的方法
			cartService.addSessions(c, courseId);
			System.out.println("可存");
			return "/returnmusic";		
		}
		else {
			errors.put("msge", "請勿重複加入購物車");
			System.out.println("不可存");
			return "/returnmusic";
		}
	
	}
	
	
	@GetMapping("/typeofcoding/{courseId}")	
	public String goBuyVideo2(@PathVariable(value = "courseId" ) Integer courseId, @ModelAttribute("cactusBean") CactusBean c, Model m) {

		//cartService.notRepeatingInTheCar(courseId);
		
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("e", errors);
							//"msge", "請勿重複加入購物車"
		boolean judge =	cartService.notRepeatingInTheCar(courseId,c);
		if( judge ) {
			
			//未完成,此處還要呼叫存入的方法
			cartService.addSessions(c, courseId);
			System.out.println("可存");
			return "/returncoding";		
		}
		else {
			errors.put("msge", "請勿重複加入購物車");
			System.out.println("不可存");
			return "/returncoding";
		}
	
	}
	
	
	@GetMapping("/typeofsport/{courseId}")	
	public String goBuyVideo3(@PathVariable(value = "courseId" ) Integer courseId, @ModelAttribute("cactusBean") CactusBean c, Model m) {

		//cartService.notRepeatingInTheCar(courseId);
		
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("e", errors);
							//"msge", "請勿重複加入購物車"
		boolean judge =	cartService.notRepeatingInTheCar(courseId,c);
		if( judge ) {
			
			//未完成,此處還要呼叫存入的方法
			cartService.addSessions(c, courseId);
			System.out.println("可存");
			return "/returnsport";		
		}
		else {
			errors.put("msge", "請勿重複加入購物車");
			System.out.println("不可存");
			return "/returnsport";
		}
	
	}
	
	
	@GetMapping("/typeoflan/{courseId}")	
	public String goBuyVideo4(@PathVariable(value = "courseId" ) Integer courseId, @ModelAttribute("cactusBean") CactusBean c, Model m) {

		//cartService.notRepeatingInTheCar(courseId);
		
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("e", errors);
							//"msge", "請勿重複加入購物車"
		boolean judge =	cartService.notRepeatingInTheCar(courseId,c);
		if( judge ) {
			
			//未完成,此處還要呼叫存入的方法
			cartService.addSessions(c, courseId);
			System.out.println("可存");
			return "/returnlan";		
		}
		else {
			errors.put("msge", "請勿重複加入購物車");
			System.out.println("不可存");
			return "/returnlan";
		}
	
	}
	
	
	@GetMapping("/typeofeconomy/{courseId}")	
	public String goBuyVideo5(@PathVariable(value = "courseId" ) Integer courseId, @ModelAttribute("cactusBean") CactusBean c, Model m) {

		//cartService.notRepeatingInTheCar(courseId);
		
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("e", errors);
							//"msge", "請勿重複加入購物車"
		boolean judge =	cartService.notRepeatingInTheCar(courseId,c);
		if( judge ) {
			
			//未完成,此處還要呼叫存入的方法
			cartService.addSessions(c, courseId);
			System.out.println("可存");
			return "/returneconomy";		
		}
		else {
			errors.put("msge", "請勿重複加入購物車");
			System.out.println("不可存");
			return "/returneconomy";
		}
	
	}
	
	
	@GetMapping("/typeoffree/{courseId}")	
	public String goBuyVideo6(@PathVariable(value = "courseId" ) Integer courseId, @ModelAttribute("cactusBean") CactusBean c, Model m) {

		//cartService.notRepeatingInTheCar(courseId);
		
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("e", errors);
							//"msge", "請勿重複加入購物車"
		boolean judge =	cartService.notRepeatingInTheCar(courseId,c);
		if( judge ) {
			
			//未完成,此處還要呼叫存入的方法
			cartService.addSessions(c, courseId);
			System.out.println("可存");
			return "/returnfree";		
		}
		else {
			errors.put("msge", "請勿重複加入購物車");
			System.out.println("不可存");
			return "/returnfree";
		}
	
	}
	
	//總結帳頁面  準備信用卡付款流程 以及個人購物車 total總金額結算
	 @GetMapping("/testbuy")
	    public String testbuy(Model m,@ModelAttribute("cactusBean") CactusBean c1 ) {
	  List<CartBean> cartlist = cartService.findYourSelfCart(c1);//正確要找自己的購物車 而不是findAllCart()
	  System.out.println(c1.getUsername());
	  
	  int total=0;
	  for(int i = 0;i<cartlist.size();i++) {
	   total+=cartlist.get(i).getCourseBean().getPrice();
	  }
	  
	  m.addAttribute("cactus", cartlist);
	  m.addAttribute("total", total);

	     return "testbuy";
	    }
	 
	 
	 
	 @GetMapping("/gotopaypal")
	    public String adddel(Model m,@ModelAttribute("cactusBean") CactusBean c1) {
		 List<CartBean> cartlist =cartService.findYourSelfCart(c1);
		 int total = 0;
		 for(int i=0 ;i < cartlist.size();i++) {
			 total+=cartlist.get(i).getCourseBean().getPrice();
		 }
		 m.addAttribute("size", cartlist.size());
		 m.addAttribute("cart", cartService.findYourSelfCart(c1));
		 m.addAttribute("total", total);
		 cartService.adddel(c1);
	        return "cartPay";
	    }
}
	


