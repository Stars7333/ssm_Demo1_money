package com.yuntu.controller;

import com.yuntu.pojo.User;
import com.yuntu.service.User.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController extends BaseController {

		@Resource
		private UserService userService;

		@RequestMapping("/login.html")
		public String login() {
				System.out.println("进入User的login");
				return "login";
		}


		@RequestMapping(value = "/doLogin.html",method = RequestMethod.POST)
		public String doLogin(@RequestParam String u_name,
													@RequestParam String u_pwd,
													HttpSession session,
													HttpServletRequest request) {
				User login = userService.getLogin(u_name,u_pwd);
				if (null != login){
						session.setAttribute("loginUser",login);
						System.out.println("登录成功!用户信息 ↓ :");
						System.out.println(login.toString());
						return "redirect:/main.html"; //跳转控制器,重新查找进行跳转页面
				}else {
						request.setAttribute("error","用户名或密码不正确!");
						return "login";
				}
		}

		@RequestMapping("/main.html")
		public String userIndex(HttpSession session) {
				return "frame";
		}
		@RequestMapping("/quit")
		public String quit(HttpSession session) {
				session.removeAttribute("loginUser");
				return "Login";
		}
}
