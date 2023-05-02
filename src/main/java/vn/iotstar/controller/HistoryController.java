package vn.iotstar.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.google.gson.Gson;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.iotstar.entity.Call;
import vn.iotstar.entity.CallDetail;
import vn.iotstar.entity.Customer;
import vn.iotstar.repository.CallDetailRepository;
import vn.iotstar.repository.CallRepository;
import vn.iotstar.repository.CustomerRepository;

@Controller
@RequestMapping("")
public class HistoryController {
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private CallRepository callRepository;
	
	@Autowired
	private CallDetailRepository callDetailRepository;
	
	@GetMapping("/history")
	public String showHomePage(ModelMap model) {
		List<Call> callList = callRepository.findAll();
		model.addAttribute("callList", callList);
		return "callhistory";
	}
	@GetMapping("/history/{id}")
	public String showCallhistoryDetail(ModelMap model, @PathVariable("id") Integer id) {
		Optional<CallDetail> optCallDetail = callDetailRepository.findById(id);
		model.addAttribute("callDetail", optCallDetail.get());
		return "callhistorydetail";
	}
	@GetMapping("/report/live")
	public String showLive(ModelMap model) {
		List<CallDetail> callDetailList = callDetailRepository.findAll();

		Long avgAbandonTime = 0L;
		Long avgTimeOneQueue = 0L;
		Long avgWaitTime = 0L;
		Long longestWaitTime = 0L;
		double avgServiceLevel = 0;
		DecimalFormat df = new DecimalFormat("#.##");
		
		for (CallDetail callDetail : callDetailList) {
			avgAbandonTime += callDetail.getTimeAbandoned().getTime();
			avgWaitTime += callDetail.getWaitTime().getTime();
			avgTimeOneQueue += callDetail.getTimeOnQueue().getTime();
			if (longestWaitTime < callDetail.getWaitTime().getTime()) {
				longestWaitTime = callDetail.getWaitTime().getTime();
			}
			avgServiceLevel += callDetail.getServiceLevel();
		}
		model.addAttribute("serviceLevel", df.format(avgServiceLevel * 100));
		model.addAttribute("avgAbandonTime", new Date(avgAbandonTime/callDetailList.size()));
		model.addAttribute("longestWaitTime", new Date(longestWaitTime));
		model.addAttribute("avgWaitTime", new Date(avgWaitTime/callDetailList.size()));
		return "live";
	}
	@GetMapping("/contact")
	public String showContact(ModelMap model) {
		List<Customer> customerList = customerRepository.findAll();
		model.addAttribute("customerList", customerList);
		return "contact";
	}
	@GetMapping("/report")
	public String showReport() {
		return "redirect:/report/dashboard";
	}
	@GetMapping("/report/inbound")
	public String showRPInbound(ModelMap model) {
		int maxMonth = 1;
		int totalCall = 0;
		int answeredCall = 0;
		int missedCall = 0;
		int abandonedCall = 0;
		int shortAbandonedCall = 0;
		
		List<Call> callList = callRepository.findAll();
		for (Call call : callList) {
			if (call.getCreateAt().getMonth() > maxMonth) {
				maxMonth = call.getCreateAt().getMonth();
			}
			if (call.getCallResponse() == true) {
				answeredCall += 1;
			} else {
				missedCall += 1;
			}
			if (call.getCallDetail().getTimeAbandoned() != null) {
				if (call.getCallDetail().getTimeAbandoned().getHours() == 0 
						&& call.getCallDetail().getTimeAbandoned().getMinutes() < 1) {
					shortAbandonedCall += 1;
				}
				else {
					abandonedCall += 1;
				}
			}
		}
		totalCall = callList.size();
		
		List<String> monthList = new ArrayList<>();
		for (int i = 0; i < maxMonth; i++) {
			monthList.add("Tháng " + String.valueOf(i + 1));
		}
		
		List<Integer> values = new ArrayList<>();
		int startMonth = 1;
		for (String month : monthList) {
			values.add(callCount(startMonth, callList));
			startMonth++;
		}
		Gson gSon = new Gson();
		
		String labelsJson = gSon.toJson(monthList);
		model.addAttribute("labelsJson", labelsJson);
		
		//model.addAttribute("labels", monthList);
		model.addAttribute("values", values);
		model.addAttribute("totalCall", totalCall);
		model.addAttribute("answeredCall", answeredCall);
		model.addAttribute("missedCall", missedCall);
		model.addAttribute("abandonedCall", abandonedCall);
		model.addAttribute("shortAbandonedCall", shortAbandonedCall);
		
		return "inbound";
	}
	private Integer callCount(int i, List<Call> callList) {
		int count = 0;
		for (Call call : callList) {
			if (call.getCreateAt().getMonth() == i) {
				count += 1;
			}
		}
		
		return count;
	}
	@GetMapping("/")
	public String showHome() {
		return "home";
	}
	@GetMapping("/report/servicelevel")
	public String showServicelevel() {
		return "servicelevel";
	}
	@GetMapping("/report/dashboard")
	public String showRPDashboard() {
		return "dashboard";
	}
	@GetMapping("/report/outbound")
	public String showRPOutbound() {
		return "outbound";
	}
	@GetMapping("/report/agent")
	public String showRPAgent() {
		return "agent";
	}
	@GetMapping("/report/call")
	public String showRPCalls() {
		return "call";
	}
}
