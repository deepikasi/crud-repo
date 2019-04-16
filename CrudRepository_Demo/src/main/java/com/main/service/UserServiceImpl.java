package com.main.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.dao.UserDao;
import com.main.model.User;
@Service
public class UserServiceImpl implements UserService{
@Autowired
UserDao userDao;
@Transactional
	public void createUser(User user) {
		userDao.createUser(user);
		
	}

@Transactional
	public List<User> listUser(User user) {
		
		return userDao.listUser(user);
	}

@Transactional
	public int deleteById(int id2) {
	
		return userDao.deleteById(id2);
	}

@Transactional
	public List<User> allUser() {
		
		return userDao.allUser();
	}

@Transactional
	public User editById(int id) {
		
		return userDao.editById(id);
	}

@Transactional
	public User updateById(User user) {
		
		return userDao.updateById(user);
	}

	
}
