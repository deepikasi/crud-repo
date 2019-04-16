package com.main.repository;

import java.io.Serializable;

import org.springframework.data.repository.CrudRepository;

import com.main.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	/*User findById(int id);*/

}
