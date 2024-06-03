package com.naukari.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naukari.Repository.RoleRepository;
import com.naukari.helper.CustomHelper;
import com.naukari.model.Roles;
import com.naukari.service.RoleService;

@Service
@Transactional
public class RoleServiceImpl implements RoleService{
	private static final Logger LOGGER=LoggerFactory.getLogger(RoleServiceImpl.class);
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	public CustomHelper customHelper;

	@Override
	public Roles addRole(Roles role) {
		LOGGER.info("role: {}",role);
		Roles r=new Roles(customHelper.getUpperCase(role.getName()), customHelper.getNewDate());
		Roles list=this.roleRepository.getRolesByName("ROLE_"+role.getName());
		if (list==null) {
			role=this.roleRepository.save(r);
		}else {
		   return list;
		}
		
		return role;
	}

	@Override
	public List<Roles> getRoles() {
		// TODO Auto-generated method stub
		return this.roleRepository.findAll();
	}

	@Override
	public Roles getRole(long id) {
		// TODO Auto-generated method stub
		return this.roleRepository.getById(id);
	}

	@Override
	public Roles updateRole(Roles role, long id) {
		Roles r=this.roleRepository.getById(id);
		r.setName("ROLE_"+role.getName());r.setCreate_at(customHelper.getNewDate());
		return this.roleRepository.save(r);
	}

	@Override
	public void deleteRole(long id) {
		this.roleRepository.deleteById(id);
		
	}

}
