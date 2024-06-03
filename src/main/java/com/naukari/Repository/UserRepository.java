package com.naukari.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.naukari.model.User;
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	/* it is use to search by both side  "SELECT DISTINCT a User a JOIN a.jobs b WHERE b.role LIKE %?1% OR a.name LIKE %?1%" */
	@Query("SELECT a FROM User a JOIN a.jobs b WHERE b.id=:jobid")
	public List<User> findUserByJobid(@Param("jobid") Long jobid);
	
	public List<User> findByEmail(String email);
	
	@Query("select a from User a where a.email=:email")
	public User getByEmail(@Param("email") String email);
	
	@Query("select a from User a where a.email=:email")
	public User getUserByUsername(@Param("email") String email);
	@Query("SELECT COUNT(*) FROM User a JOIN a.jobs b WHERE b.id=:jobid")
	public int countEmpByJobid(@Param("jobid") long jobid);
}
