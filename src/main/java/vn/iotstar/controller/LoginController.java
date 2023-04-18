package vn.iotstar.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("")
public class LoginController {
	@GetMapping("/login")
	public String showHomePage() {
		return "login";
	}
	@PostMapping("/loginAct")
	public ModelAndView home(ModelMap model, @RequestParam("email") String email,
			@RequestParam("password") String password) {
			if (email == "admin@admin.com" && password == "admin") {
				System.out.print("Dang nhap");
				return new ModelAndView("redirect:/", model);
			}
			return new ModelAndView("redirect:/", model);
			
	}
}
