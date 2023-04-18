package vn.iotstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class SignupController {
	@GetMapping("/signup")
	public String showHomePage() {
		return "signup";
	}
}
