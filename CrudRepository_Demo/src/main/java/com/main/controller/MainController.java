package com.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.main.model.User;
import com.main.repository.UserRepository;
import com.main.service.UserService;

@RestController
public class MainController {
	@Autowired
	UserService userService;

	@Autowired
	UserRepository rep;

	@RequestMapping(value = "/")
	public ModelAndView funOne() {

		return new ModelAndView("begin");
	}

	@RequestMapping(value = "/save")
	public ModelAndView createUser(@ModelAttribute User user) {
		System.out.println("Come to controller");
		userService.createUser(user);
		return new ModelAndView("redirect:/list");

	}

	@RequestMapping(value = "/list")
	public ModelAndView listUser(@ModelAttribute("users") User users) {

		List<User> user = userService.allUser();
		return new ModelAndView("list", "User", user);

	}

	@RequestMapping(value = "/Delete")
	public ModelAndView deleteUser(HttpServletRequest request, @ModelAttribute("user") User user) {
		int id2 = Integer.parseInt(request.getParameter("id"));
		userService.deleteById(id2);
		return new ModelAndView("redirect:/list");
	}

	@RequestMapping("/Edit")
	public ModelAndView editUser(HttpServletRequest request, @ModelAttribute("user") User user) {
		
		List<User> list = userService.allUser();
		int id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
	
		User us=userService.editById(id);
		ModelAndView modelAndView = new ModelAndView("Edit", "list", list);
		modelAndView.addObject("user", us);
		return modelAndView;
	}

	@RequestMapping("/Update")
	public ModelAndView updateUser(@ModelAttribute("user") User user) {

		userService.updateById(user);
		return new ModelAndView("redirect:/list");
	}

}
