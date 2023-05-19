package vn.iotstar.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import antlr.StringUtils;
import vn.iotstar.entity.Agent;
import vn.iotstar.entity.Call;
import vn.iotstar.entity.CallConversation;
import vn.iotstar.entity.CallDetail;
import vn.iotstar.entity.Customer;
import vn.iotstar.entity.FeedBackDetail;
import vn.iotstar.repository.AgentRepository;
import vn.iotstar.repository.CallConversationRepository;
import vn.iotstar.repository.CallDetailRepository;
import vn.iotstar.repository.CallRepository;
import vn.iotstar.repository.CustomerRepository;
import vn.iotstar.repository.FeedBackDetailRepository;
import vn.iotstar.service.ApiService;

@Controller
@RequestMapping(path = "/admin")
public class AdminController {

	@Autowired
	private CallRepository callRepository;

	@Autowired
	private AgentRepository agentRepository;

	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private CallDetailRepository callDetailRepository;

	@Autowired
	private HttpSession session;

	@Autowired
	private ApiService apiService;

	@Autowired
	private Cloudinary cloudinary;

	@Autowired
	private CallConversationRepository callConversationRepository;

	@Autowired
	private FeedBackDetailRepository feedBackDetailRepository;

	@GetMapping
	public String getHome() {
		Agent user = (Agent) session.getAttribute("user");
		if (user == null || user.getRole() != 1) {
			return "redirect:/badRequest";
		}
		return "redirect:/admin/agent";
	}

	@GetMapping(path = "/agent")
	public String getAdminPage(ModelMap model, @RequestParam("page") Optional<Integer> page,
			@RequestParam("size") Optional<Integer> size) {
		Agent user = (Agent) session.getAttribute("user");
		if (user == null || user.getRole() != 1) {
			return "redirect:/badRequest";
		}

		List<Agent> agentList = agentRepository.findAll();

		Agent newAgent = new Agent();

		int count = agentList.size();
		int currentPage = page.orElse(0);
		int pageSize = size.orElse(5);

		Pageable pageable = PageRequest.of(currentPage, pageSize, Sort.by("id")); // sắp xếp theo trường Id
		Page<Agent> resultPage = null;

		resultPage = agentRepository.findAll(pageable);

		int totalPages = resultPage.getTotalPages();
		if (totalPages > 0) {
			int start = Math.max(1, currentPage - 2);
			int end = Math.min(currentPage + 2, totalPages);

			if (totalPages > count) {
				if (end == totalPages)
					start = end - count;
				else if (start == 1)
					end = start + count;
			}
			List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed().collect(Collectors.toList());

			model.addAttribute("pageNumbers", pageNumbers);
		}
		model.addAttribute("size", agentList.size());
		model.addAttribute("agentPage", resultPage);
		model.addAttribute("newAgent", newAgent);
		return "/admin/agent";
	}

	@GetMapping(path = "/agent/delete/{id}")
	public String deleteAgent(ModelMap model, @PathVariable("id") Integer id) {
		Optional<Agent> optAgent = agentRepository.findById(id);
		if (optAgent.isPresent()) {
			agentRepository.delete(optAgent.get());
		}

		return "redirect:/admin/agent";
	}

	@PostMapping(path = "/agent/saveOrUpdate")
	public String saveOrUpdate(ModelMap model, @Valid @ModelAttribute("newAgent") Agent newAgent) {

		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());

		if (newAgent.getId() == null) {
			newAgent.setUpdateAt(timestamp);
			agentRepository.save(newAgent);
		} else {
			Optional<Agent> optAgent = agentRepository.findById(newAgent.getId());
			optAgent.get().setName(newAgent.getName());
			optAgent.get().setEmail(newAgent.getEmail());
			optAgent.get().setAddress(newAgent.getAddress());
			optAgent.get().setPhone(newAgent.getPhone());
			optAgent.get().setIsActivate(newAgent.getIsActivate());
			optAgent.get().setCreateAt(timestamp);
			agentRepository.save(optAgent.get());
		}

		return "redirect:/admin/agent";
	}

	@GetMapping(path = "/customer")
	public String getCustomerManagePAge(ModelMap model, @RequestParam("page") Optional<Integer> page,
			@RequestParam("size") Optional<Integer> size) {
		Agent user = (Agent) session.getAttribute("user");
		if (user == null || user.getRole() != 1) {
			return "redirect:/badRequest";
		}

		List<Customer> customerList = customerRepository.findAll();

		Customer newCustomer = new Customer();

		int count = customerList.size();
		int currentPage = page.orElse(0);
		int pageSize = size.orElse(5);

		Pageable pageable = PageRequest.of(currentPage, pageSize, Sort.by("id")); // sắp xếp theo trường Id
		Page<Customer> resultPage = null;

		resultPage = customerRepository.findAll(pageable);

		int totalPages = resultPage.getTotalPages();
		if (totalPages > 0) {
			int start = Math.max(1, currentPage - 2);
			int end = Math.min(currentPage + 2, totalPages);

			if (totalPages > count) {
				if (end == totalPages)
					start = end - count;
				else if (start == 1)
					end = start + count;
			}
			List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed().collect(Collectors.toList());

			model.addAttribute("pageNumbers", pageNumbers);
		}
		model.addAttribute("size", customerList.size());
		model.addAttribute("customerPage", resultPage);
		model.addAttribute("newCustomer", newCustomer);

		return "/admin/customer";
	}

	@GetMapping(path = "/customer/delete/{id}")
	public String deleteCustomer(ModelMap model, @PathVariable("id") Integer id) {
		Optional<Customer> optCustomer = customerRepository.findById(id);
		if (optCustomer.isPresent()) {
			customerRepository.delete(optCustomer.get());
		}

		return "redirect:/admin/customer";
	}

	@PostMapping(path = "/customer/saveOrUpdate")
	public String saveOrUpdateCustomer(ModelMap model, @Valid @ModelAttribute("newCustomer") Customer newCustomer) {
		Timestamp timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		if (newCustomer.getId() == null) {
			newCustomer.setUpdateAt(timestamp);
			customerRepository.save(newCustomer);
		} else {
			Optional<Customer> optCustomer = customerRepository.findById(newCustomer.getId());
			optCustomer.get().setName(newCustomer.getName());
			optCustomer.get().setEmail(newCustomer.getEmail());
			optCustomer.get().setAddress(newCustomer.getAddress());
			optCustomer.get().setPhone(newCustomer.getPhone());
			optCustomer.get().setJobTitle(newCustomer.getJobTitle());
			optCustomer.get().setCreateAt(timestamp);
			customerRepository.save(optCustomer.get());
		}

		return "redirect:/admin/customer";
	}

	@GetMapping(path = "/call")
	public String getCallManagePage(ModelMap model, @RequestParam("page") Optional<Integer> page,
			@RequestParam("size") Optional<Integer> size) {
		Agent user = (Agent) session.getAttribute("user");
		if (user == null || user.getRole() != 1) {
			return "redirect:/badRequest";
		}

		List<Call> callList = callRepository.findAll();
		List<Agent> agentList = agentRepository.findAll();

		Call newCall = new Call();
		CallDetail newCallDetail = new CallDetail();

		int count = callList.size();
		int currentPage = page.orElse(0);
		int pageSize = size.orElse(5);

		Pageable pageable = PageRequest.of(currentPage, pageSize, Sort.by("id")); // sắp xếp theo trường Id
		Page<Call> resultPage = null;

		resultPage = callRepository.findAll(pageable);

		int totalPages = resultPage.getTotalPages();
		if (totalPages > 0) {
			int start = Math.max(1, currentPage - 2);
			int end = Math.min(currentPage + 2, totalPages);

			if (totalPages > count) {
				if (end == totalPages)
					start = end - count;
				else if (start == 1)
					end = start + count;
			}
			List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed().collect(Collectors.toList());

			model.addAttribute("pageNumbers", pageNumbers);
		}
		model.addAttribute("size", callList.size());
		model.addAttribute("callPage", resultPage);
		model.addAttribute("newCall", newCall);
		model.addAttribute("newCallDetail", newCallDetail);
		model.addAttribute("agentList", agentList);

		return "/admin/call";
	}

	@GetMapping(path = "/call/delete/{id}")
	public String deleteCall(ModelMap model, @PathVariable("id") Integer id) {
		Optional<Call> optCall = callRepository.findById(id);
		callRepository.delete(optCall.get());

		return "redirect:/admin/call";
	}

	@PostMapping(path = "call/add")
	public String addCall(@Validated @RequestParam("businessHours") Boolean businessHours,
			@Validated @RequestParam("callOffer") Boolean callOffer,
			@Validated @RequestParam("callResponse") Boolean callResponse,
			@Validated @RequestParam("phone") String phone,
			@RequestParam("timeAbandoned") @DateTimeFormat(iso = DateTimeFormat.ISO.TIME) LocalTime timeAbandoned,
			@RequestParam("waitTime") @DateTimeFormat(iso = DateTimeFormat.ISO.TIME) LocalTime waitTime,
			@Validated @RequestParam("agentId") Integer agentId, @Validated @RequestParam("typeCall") String typeCall,
			@Validated @RequestParam("serviceLevel") float serviceLevel,
			@RequestParam("callContent") MultipartFile callContent,
			@Validated @RequestParam(value = "feedBackContent", required = false) String feedBackContent)
			throws Exception {

		if (agentId == null) {
			return "redirect:/badRequest";
		}

		/*
		 * System.out.println(businessHours); System.out.println(callOffer);
		 * System.out.println(callResponse); System.out.println(phone);
		 * System.out.println(callResponse);
		 * System.out.println(Timestamp.valueOf(timeAbandoned.atDate(LocalDate.now())));
		 * System.out.println(callResponse);
		 * System.out.println(Timestamp.valueOf(waitTime.atDate(LocalDate.now())));
		 * System.out.println(agentId); System.out.println(typeCall);
		 * System.out.println(serviceLevel);
		 * System.out.println(callContent.getOriginalFilename()); return null;
		 */

		
		  Optional<Agent> optAgent = agentRepository.findById(agentId); Timestamp
		  timestamp = new Timestamp(new Date(System.currentTimeMillis()).getTime());
		  
		  Call call = new Call(); call.setBusinessHours(businessHours);
		  call.setCallOffer(callOffer); call.setCallResponse(callResponse);
		  call.setPhone(phone); call.setAgent(optAgent.get());
		  call.setCreateAt(timestamp); callRepository.save(call);
		  
		  Optional<Call> optCall = callRepository.findByCreateAt(timestamp);
		  
		  CallDetail callDetail = new CallDetail();
		  
		  callDetail.setCall(optCall.get());
		  
		  Map map = this.cloudinary.uploader().upload(callContent.getBytes(),
		  ObjectUtils.asMap("resource_type", "video")); String fileUrl = (String)
		  map.get("secure_url"); // System.out.println(fileUrl);
		  
		  JSONObject response = apiService.createTranscript(fileUrl); String callText =
		  response.getString("text"); Integer timeOfCall =
		  response.getInt("audio_duration"); 
		  
		  callDetail.setCall(optCall.get()); callDetail.setCallContent(fileUrl);
		  callDetail.setCreateAt(timestamp); callDetail.setServiceLevel(serviceLevel);
		  callDetail.setTimeOnQueue(timeOnQueue(timeOfCall));
		  callDetail.setTypeCall(typeCall);
		  callDetail.setTimeAbandoned(Timestamp.valueOf(timeAbandoned.atDate(LocalDate.now())));
		  callDetail.setWaitTime(Timestamp.valueOf(waitTime.atDate(LocalDate.now())));
		  
		  
		  callDetailRepository.save(callDetail);
		  
		  CallConversation callConversation = new CallConversation();
		  
		  callConversation.setCall(optCall.get());
		  callConversation.setCreateAt(timestamp);
		  callConversation.setConversation(callText);
		  
		  callConversationRepository.save(callConversation);
		  
		  if (!feedBackContent.equals("")) { FeedBackDetail feedBackDetail = new
		  FeedBackDetail(); feedBackDetail.setCall(optCall.get());
		  feedBackDetail.setAgent(optAgent.get());
		  feedBackDetail.setCreateAt(timestamp);
		  feedBackDetail.setFeedBackContent(feedBackContent);
		  feedBackDetail.setCallDetail(callDetail);
		  
		  callDetailRepository.save(callDetail); }
		 

		return "redirect:/admin/call";
	}

	private Timestamp timeOnQueue(Integer seconds) {
		int hours = seconds / 3600;
		int remainingSeconds = seconds % 3600;
		int minutes = remainingSeconds / 60;
		remainingSeconds %= 60;

		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, hours);
		calendar.set(Calendar.MINUTE, minutes);
		calendar.set(Calendar.SECOND, remainingSeconds);

		Date date = calendar.getTime();
		Timestamp timestamp = new Timestamp(date.getTime());

		return timestamp;
	}

}
