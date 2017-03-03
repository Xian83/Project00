package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Welcome {
	
	@RequestMapping("/")
	public String init(){
		return "default";
	}
}
