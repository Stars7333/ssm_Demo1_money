package com.yuntu.interceptor;

import com.yuntu.pojo.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
* 请求拦截器
* */
public class SysInterceptor extends HandlerInterceptorAdapter {
		@Override
		public boolean preHandle(HttpServletRequest request,
														 HttpServletResponse response,
														 Object handler) throws Exception {
				System.out.println("-----------------进入拦截器_______________________________________");
				String url = request.getRequestURI();
				User user = (User) request.getSession().getAttribute("loginUser");
				if (null==user){
						System.out.println("拦截器拦截成功-----------");
						response.sendRedirect(request.getContextPath()+"/401.jsp");
						return false;
				}
				System.out.println("放行---------------");
				return true;
		}
}
