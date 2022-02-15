package tw.cactus;

import java.security.Principal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication
@ComponentScan("tw.cactus")
public class CactusApplication {

	public static void main(String[] args) {
		SpringApplication.run(CactusApplication.class, args);
		
		
	}
//	@GetMapping("/user")
//	public Principal user(Principal principal) {
//		return principal;
//	}
	

}
