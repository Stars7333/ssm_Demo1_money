package com.yuntu.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.mysql.cj.util.StringUtils;
import com.yuntu.pojo.Money;
import com.yuntu.pojo.User;
import com.yuntu.service.User.UserService;

import com.yuntu.tools.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/sys/user")
public class UserController extends BaseController{

		@Resource
		private UserService userService;

		@RequestMapping(value = "/page",method = RequestMethod.GET)
		public String pageLists(Integer pageindex ,
														Model model,
														HttpSession session){
				System.out.println("进入管理");
				User loginUser = (User)session.getAttribute("loginUser");
				if(pageindex==null) {
						pageindex=1;
				}
				if (pageindex<1){
						pageindex=1;
				}
				PageUtil<User> pageUtil = new PageUtil<User>();
				pageUtil.setPageindex(pageindex);
				pageUtil.setPagesize(4);
				userService.getLists(pageUtil,loginUser.getU_status());

				model.addAttribute("pageUtil", pageUtil);
				return "userlist";
		}


		@RequestMapping("/useradd.html")
		public String douseradd(@ModelAttribute("user") User user){
				return "useradd";
		}
		//REST风格的支持
		@RequestMapping(value = "/useUserA",method = RequestMethod.POST)
		public String adduser(User user, HttpSession session){
				User loginUser = (User)session.getAttribute("loginUser");
				user.setU_status(loginUser.getU_status());
				if (userService.add(user))
						return "redirect:/sys/user/page";
				return "useradd";
		}

		@ResponseBody
		@RequestMapping("/delUser")
		public String delUser(@RequestParam Integer u_id) {
				if (userService.Del(u_id))
					return 	"redirect:/sys/user/page";
				return "usermodify";
		}

		//REST风格的支持
		@RequestMapping("/doUpdUser/{id}")
		public String doUpdUser(@PathVariable Integer id,Model model) {
				System.out.println("获取的用户id:"+id);
				User user = userService.getUser(id);
				System.out.println(user.toString());
				model.addAttribute("user",user);
				return "usermodify";
		}


		@RequestMapping(value = "/modifysave.html",method = RequestMethod.POST)
		public String updUser(User user, HttpSession session){
				System.out.println(user.toString());
				boolean flag = userService.Upd(user);
				if (flag)
						System.out.println(new Date()+"成功修改,id为:"+user.getU_id());
						return "redirect:/sys/user/page";
		}


		@RequestMapping(value = "/view/{m_id}",method = RequestMethod.GET)
		public String viewOne(@PathVariable Integer m_id,Model model){
				User item = userService.getUser(m_id);
				System.out.println(item.toString());
				model.addAttribute("user",item);
				return "userview";
		}



}
