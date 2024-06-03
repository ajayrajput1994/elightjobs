package com.naukari.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.naukari.model.Roles;

@Component
public interface RoleService {

	Roles addRole(Roles role);
	
	List<Roles> getRoles();
	
	Roles getRole(long id);
	
	Roles updateRole(Roles role,long id);
	
	void deleteRole(long id);
}
