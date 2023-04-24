package vn.iotstar.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vn.iotstar.entity.Agent;
import vn.iotstar.repository.AgentRepository;

@Controller
@RequestMapping("")
public class LoginController {
	
	@Autowired
	private AgentRepository agentRepository;
	
	@Autowired
	private HttpSession session;
	
	@GetMapping("/login")
	public String showHomePage() {
		return "login";
	}
	@PostMapping("/loginAct")
	public ModelAndView home(ModelMap model, @RequestParam("email") String email,
			@RequestParam("password") String password, HttpSession session) {
		Optional<Agent> optAgent = agentRepository.findByEmail(email);
		
		if (optAgent.isEmpty()) {
			model.addAttribute("message", "Tài khoản không tồn tại trong hệ thống");
			return new ModelAndView("redirect:/login", model);
		} else {
			if (optAgent.get().getPassword().equals(password)) {
				model.addAttribute("message", "Đăng nhập thành công");
				session.setAttribute("user", optAgent.get());
				return new ModelAndView("redirect:/", model);
			} else {
				model.addAttribute("message", "Mật khẩu không chính xác");
				return new ModelAndView("redirect:/login", model);
			}
		}
	}
}
