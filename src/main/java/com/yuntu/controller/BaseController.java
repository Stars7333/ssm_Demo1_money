package com.yuntu.controller;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BaseController {

		/**
		 * @InitBinder
		 * 使用它可以解决Springmvc中日期类型无法绑定的问题
		 */
		@InitBinder
		public void myInitBinder(WebDataBinder dataBinder){
				dataBinder.registerCustomEditor(Date.class,
								new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"),true)
																				);

		}

}
