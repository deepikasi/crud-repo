package com.main.service;

import java.util.List;

import com.main.model.User;



public interface UserService {
	
	public void createUser(User user);

	public List<User> listUser(User user);

	public int deleteById(int id2);

	public List<User> allUser();

	public User editById(int id);

	public User updateById(User user);
	
}
