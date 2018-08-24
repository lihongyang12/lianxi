package com.lhy.inc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 登录拦截器
 * @author chenwei
 *
 */
public class MyInterceptor1 implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//过滤掉不需要拦截的路径例如：“/login”、“/loginOpt”
		//获取请求路径
//		String servletPath = request.getServletPath();
//		System.out.println("loignfilter start===============" + servletPath);
		
		//不包含路径才去验证
//		if (!servletPath.contains("login")) {
			
			if (request.getSession().getAttribute("user") == null) {
				request.setAttribute("errMsg", "用户未登录");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
				return false;
			}
//		}
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("loignfilter post===============");
		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("loignfilter end===============");
		
		
	}
	
}
