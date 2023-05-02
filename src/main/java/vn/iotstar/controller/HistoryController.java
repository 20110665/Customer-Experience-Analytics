package vn.iotstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class HistoryController {
	@GetMapping("/history")
	public String showHomePage() {
		return "callhistory";
	}

	@GetMapping("/history/1")
	public String showCallhistoryDetail() {
		return "callhistorydetail";
	}

	@GetMapping("/history/1/update")
	public String showCallhistoryDetailUpdate() {
		return "callhistorydetailupdate";
	}

	@GetMapping("/live")
	public String showLive() {
		return "live";
	}

	@GetMapping("/inbound")
	public String showInbound() {
		return "inbound";
	}

	@GetMapping("/contact")
	public String showContact() {
		return "contact";
	}

	@GetMapping("/contact/1")
	public String showContactDetail() {
		return "contactDetail";
	}

	@GetMapping("/contact/1/update")
	public String showContactDetailUpdate() {
		return "contactDetailUpdate";
	}

	@GetMapping("/report")
	public String showReport() {
		return "live";
	}

	@GetMapping("/report/inbound")
	public String showRPInbound() {
		return "inbound";
	}

	@GetMapping("/")
	public String showHome() {
		return "home";
	}

	@GetMapping("/servicelevel")
	public String showRPServicelevel() {
		return "servicelevel";
	}

	@GetMapping("/dashboard")
	public String showRPDashboard() {
		return "dashboard";
	}

	@GetMapping("/outbound")
	public String showRPOutbound() {
		return "outbound";
	}

	@GetMapping("/agent")
	public String showRPAgent() {
		return "agent";
	}

	@GetMapping("/call")
	public String showRPCalls() {
		return "call";
	}
}
