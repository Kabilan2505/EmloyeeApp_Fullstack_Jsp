package com.Demo.jsp.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Demo.jsp.Entity.DemoUser;
import com.Demo.jsp.Repository.DemoRepository;

@Service
public class DemoService {
	
	@Autowired
	private DemoRepository repo;
	
	public List<DemoUser> getAllUser(){
		return repo.findAll();
	}
	
	public DemoUser saveUser(DemoUser user) {
		return repo.save(user);
	}
	
	public String deleteUser(long id) {
	repo.deleteById(id);
	
	return "Details deleted Successfully";
		
	}
	public DemoUser getdetailsById(Long id) {
		return repo.findById(id).get();
	}
	
	public DemoUser updateDetailsById(DemoUser user) {
		return repo.save(user);
		
	}
	
	public List<DemoUser> findByGender(String gender){
		return repo.findByGender(gender);
		
	}

}
