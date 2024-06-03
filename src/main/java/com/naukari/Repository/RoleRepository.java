package com.naukari.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.naukari.model.Roles;
@Repository
public interface RoleRepository extends JpaRepository<Roles, Long>{
	@Query("SELECT r FROM Roles r WHERE r.name=:role")
	public Roles getRolesByName(@Param("role") String role);
}
