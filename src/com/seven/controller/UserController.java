package com.seven.controller;
import com.seven.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@RequestMapping("/user")
@Controller
public class UserController  {
	@Autowired
	private UserService userService;
	@RequestMapping("/register")
	public void register(){
		System.out.println("--------------------------register------------------------------------");
	}
	@RequestMapping("/check")
	public void check() {
		System.out.println("--------------------------check------------------------------------");
//		boolean userNameIsExit = userService.checkUserNameIsExit(userName);
//		Map<String, String> map = new HashMap<>();
//		if (userNameIsExit != true) {
//			map.put("msg", "1");
//		} else {
//			map.put("msg", "2");
//		}
	}
	@RequestMapping("/login")
	public String login() {//登录验证
//		User user = new User();
//		//获取用户表单参数
//		String username = model.getUserName();
//		String password = model.getUserPassword();
//		boolean exist;
//		exist = userService.checkUserNameIsExit(username);
//		//根据判断结果进行决定是否添加用户
//		if (exist) {
//			//查询用户
//			user = userService.getUserByUserName(username);
//			//将用户名写入到Session中
//			session.put("login", user.getUserName());
//			System.out.println("登陆成功+" + username);
//			return "send";
//		} else {
//			//用户不存在
//			user.setUserName("");
//			System.out.println("error！");
//			return "error";
//		}
		return "login";
	}

	
}
