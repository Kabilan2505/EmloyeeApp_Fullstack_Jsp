package com.Demo.jsp.Controller;

import java.util.List;

import org.apache.catalina.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Demo.jsp.Entity.DemoUser;
import com.Demo.jsp.Service.DemoService;


@Controller
public class DemoController {
	
	@Autowired
	private DemoService service;

	
	   @RequestMapping("/users")
	    public String listUsers(Model model) {
	        List<DemoUser> Users = service.getAllUser();
	        model.addAttribute("Users", Users);
	        return "users"; // This maps to entity-list.jsp
	    }
	@GetMapping("/users/new")
	public String createEmployeeForm(Model model) {
		DemoUser user=new DemoUser();
		model.addAttribute("user", user);
		return "userform";
		
	}
	
	@PostMapping("/saveusers")
	public String saveUser(@ModelAttribute ("user") DemoUser user) {
		 service.saveUser(user);
		 return"redirect:/users";
		
	}
	
	
	@GetMapping("/users/edit/{id}")
	public String showDetailsById(@PathVariable Long id,Model model) {
		model.addAttribute("user", service.getdetailsById(id));
		return "editform";
		
	}
	
	@PostMapping("/update/{id}")
	public String updateDetails(@PathVariable Long id, @ModelAttribute("user") DemoUser user, Model model ) {
		
		DemoUser existingUser=service.getdetailsById(id);
		existingUser.setId(id);
		existingUser.setName(user.getName());
		existingUser.setDept(user.getDept());
		existingUser.setEmail(user.getEmail());
		existingUser.setAge(user.getAge());
		existingUser.setGender(user.getGender());
		existingUser.setMob_no(user.getMob_no());
		
		service.updateDetailsById(existingUser);
		return "redirect:/users";
		
	}
	@GetMapping("/delete/{id}")
	public String deleteDetails(@PathVariable Long id) {
		
		service.deleteUser(id);
		return "redirect:/users";
		
	}
	
	@GetMapping("/search")
	public String searchOption(@RequestParam("gender") String gender, Model model) {
		
		List<DemoUser> byGender=service.findByGender(gender);
		model.addAttribute("ByGender", byGender);
		
		return "search";
		
	}
	
	@GetMapping("/cancel")
	public String cancel() {
		return "redirect:/users";
	}
	
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	
	

}
