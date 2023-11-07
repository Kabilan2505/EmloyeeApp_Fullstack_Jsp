package com.Demo.jsp.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Demo.jsp.Entity.DemoUser;

@Repository
public interface DemoRepository extends JpaRepository<DemoUser, Long> {
	
	public  List<DemoUser> findByGender(String gender);

}
