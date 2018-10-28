package com.webmagic.service;

import com.webmagic.dto.Institute;
import com.webmagic.dto.User;

import java.util.List;

public interface InstituteService {
	
	Integer insert(Institute institute);
	
	Integer delete(Institute institute);
	
	Integer update(Institute institute);
	
	List<Institute> select(Institute institute);
	
	Institute get(Integer id);
}
