package com.main.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.main.model.User;
import com.main.repository.UserRepository;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	UserRepository rep;
	
	@Override
	public void createUser(User user) {
		rep.save(user);
		
	}

	@Override
	public List<User> listUser(User user) {
		
		 	List<User> users=(List<User>) rep.findAll();
		 	return users;
	}

	@Override
	public int deleteById(int id2) {
		rep.delete(id2);
		return 20;
	}

	@Override
	public List<User> allUser() {
		List<User> list=(List<User>) rep.findAll();
		return list;
	}

	@Override
	public User editById(int id) {
		
		return rep.findOne(id);
	}

	@Override
	public User updateById(User user) {
		
		return rep.save(user);
	}

}
