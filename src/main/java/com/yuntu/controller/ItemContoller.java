package com.yuntu.controller;

import com.yuntu.pojo.Item;
import com.yuntu.pojo.User;
import com.yuntu.service.Item.ItemService;
import com.yuntu.service.User.UserService;

import com.yuntu.tools.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/sys/item")
public class ItemContoller extends BaseController{

		@Resource
		private ItemService itemService;
		@Resource
		private UserService userService;

		@RequestMapping(value = "/page",method = RequestMethod.GET)
		public String pageLists(Integer pageindex ,
														Model model,
														HttpSession session){
				System.out.println("进入管理");
				if(pageindex==null) {
						pageindex=1;
				}
				if (pageindex<1){
						pageindex=1;
				}
				PageUtil<Item> pageUtil = new PageUtil<Item>();
				pageUtil.setPageindex(pageindex);
				pageUtil.setPagesize(4);
				User loginUser = (User)session.getAttribute("loginUser");
				System.out.println("当前用户的等级是:"+loginUser.getU_status());
				itemService.getLists(pageUtil,loginUser.getU_status(),loginUser.getU_id());
				model.addAttribute("pageUtil", pageUtil);
				return "Itemlist";
		}

		@RequestMapping(value = "/useradd.html")
		public String useradd(@ModelAttribute("user") User user, Model model) {
				List<User> users = userService.getAll();
				model.addAttribute("users",users);
				return "Itemadd";
		}

		@ResponseBody
		@RequestMapping(value = "/upd_evolve",method = RequestMethod.GET)
		public boolean upd_evolve(@RequestParam int evolve,
														 @RequestParam int i_id){
				boolean flag=false;
				if (itemService.UpdEvolve(evolve, i_id)==1){
						flag=true;
				}else {
						flag=false;
				}
				return flag;
		}

		@RequestMapping(value = "/add.html",method = RequestMethod.POST)
		public String adduser2save(Item item, HttpSession session) {
				item.setI_GoTime(new Date());
				if (itemService.add(item)){
						return "redirect:/sys/item/page";
				}
				return "Itemadd";
		}

		@RequestMapping(value = "/view/{id}",method = RequestMethod.GET)
		public String view(@PathVariable Integer id,Model model){
				Item item = itemService.getItem(id);
				model.addAttribute("item",item);
				List<User> users = userService.getAll();
				model.addAttribute("users",users);
				return "Itemmodify";
		}
		@RequestMapping(value = "/viewOne/{id}",method = RequestMethod.GET)
		public String viewOne(@PathVariable Integer id,Model model){
				Item item = itemService.getItem(id);
				model.addAttribute("item",item);
				List<User> users = userService.getAll();
				model.addAttribute("users",users);
				return "Itemview";
		}

		@RequestMapping(value = "/modifysave.html",method = RequestMethod.POST)
		public String modifysave(Item item){
				System.out.println(item.toString());
				boolean flag = itemService.Upd(item);
				if (flag)
						System.out.println(new Date()+"成功修改,id为:"+item.getI_id());
						return "redirect:/sys/item/page";
		}

		@ResponseBody
		@RequestMapping("/Del")
		public boolean delUser(@RequestParam Integer i_id) {
				return itemService.Del(i_id);
		}

}
