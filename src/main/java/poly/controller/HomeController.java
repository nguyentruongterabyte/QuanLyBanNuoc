package poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("say-hello")
	String sayHello() {
		return "hello";
	}
}
