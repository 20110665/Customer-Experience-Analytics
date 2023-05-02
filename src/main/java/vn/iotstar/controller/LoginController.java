package vn.iotstar.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	@PostMapping("/login")
	public String home(Model model, @RequestParam("email") String email,
			@RequestParam("password") String password, HttpSession session) {
		Optional<Agent> optAgent = agentRepository.findByEmail(email);
		
		if (optAgent.isEmpty()) {
			model.addAttribute("message", "Tài khoản không tồn tại trong hệ thống");
			return "login";
		} else {
			if (optAgent.get().getPassword().equals(password)) {
				//model.addAttribute("message", "Đăng nhập thành công");
				session.setAttribute("user", optAgent.get());
				return "redirect:/";
			} else {
				model.addAttribute("message", "Mật khẩu không chính xác");
				return "login";
			}
		}
	}
	
	@PostMapping("/logout")
	public String logout() {
		session.removeAttribute("user");
		return "redirect:/";
	}
	@GetMapping("/signup")
	public String showSignp(ModelMap model) {
		return "signup";
	}
	@PostMapping("/signup")
	public String signUp(Model model, @Validated @RequestParam("email") String email,
			@Validated @RequestParam("password") String password) {
		Optional<Agent> optAgent = agentRepository.findByEmail(email);
		
		if (optAgent.isPresent()) {
			model.addAttribute("message", "Tài khoản email này đã tồn tại");
			return "signup";
		} else {
			Agent agent = new Agent();
			Date date = new Date(System.currentTimeMillis());
			Timestamp ts = new Timestamp(date.getTime());
			
			agent.setEmail(email.trim());
			agent.setPassword(password.trim());
			agent.setCreateAt(ts);
			agentRepository.save(agent);
			
			return "redirect:/";
		}
	}
}
