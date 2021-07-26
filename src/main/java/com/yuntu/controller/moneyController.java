package com.yuntu.controller;

import com.yuntu.pojo.Item;
import com.yuntu.pojo.Money;
import com.yuntu.pojo.User;
import com.yuntu.service.Item.ItemService;
import com.yuntu.service.Money.MoneyService;
import com.yuntu.tools.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/sys/money")
public class moneyController extends BaseController{

		@Resource
		private MoneyService moneyService;
		@Resource
		private ItemService itemService;

		@RequestMapping("/page")
		public String page(Integer pageindex ,
											 Model model,
											 HttpSession session){
				System.out.println("进入管理");
				if(pageindex==null) {
						pageindex=1;
				}
				if (pageindex<1){
						pageindex=1;
				}
				PageUtil<Money> pageUtil = new PageUtil<Money>();
				pageUtil.setPageindex(pageindex);
				pageUtil.setPagesize(4);
				moneyService.getLists(pageUtil);
				model.addAttribute("pageUtil", pageUtil);
				return "Moneylist";
		}

		@RequestMapping("/Moneyadd.html")
		public String Moneyadd(@ModelAttribute("money")Money money,
													 Model model){
				List<Item> items = itemService.getAllName();
				model.addAttribute("items",items);
				return "Moneyadd";
		}
		@RequestMapping(value = "/add.html",method = RequestMethod.POST)
		public String adduser2save(Money money) {
				System.out.println(money.toString());
				if (moneyService.add(money)){
						return "redirect:/sys/money/page";
				}
				return "Moneyadd";
		}
		@RequestMapping(value = "/view/{m_id}",method = RequestMethod.GET)
		public String view(@PathVariable Integer m_id, Model model){
				Money item = moneyService.getMoney(m_id);
				model.addAttribute("money",item);
				List<Item> items = itemService.getAllName();
				model.addAttribute("items",items);
				return "Moneymodify";
		}
		@RequestMapping(value = "/viewOne/{m_id}",method = RequestMethod.GET)
		public String viewOne(@PathVariable Integer m_id,Model model){
				Money item = moneyService.getMoney(m_id);
				System.out.println(item.toString());
				model.addAttribute("money",item);
				return "Moneyview";
		}
		@RequestMapping(value = "/modifysave.html",method = RequestMethod.POST)
		public String modifysave(Money money){
				System.out.println(money.toString());
				boolean flag = moneyService.Upd(money);
				if (flag)
						System.out.println(new Date()+"成功修改,id为:"+money.getM_id());
				return "redirect:/sys/money/page";
		}
		@ResponseBody
		@RequestMapping("/Del")
		public boolean delUser(@RequestParam Integer m_id) {
				return moneyService.Del(m_id);
		}

}
