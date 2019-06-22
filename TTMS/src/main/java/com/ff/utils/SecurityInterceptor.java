package com.ff.utils;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SecurityInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        Object login = request.getSession().getAttribute("login");
        if(login!=null) return true;
        else{
            String uri = request.getRequestURI();
            String path = uri.substring(request.getContextPath().length());
            String query = request.getQueryString();
            if(query==null){
                query="";

            }
            else{
                query="?"+query;
            }
            String beforePath = path+query;
            request.getSession().setAttribute("beforePath",beforePath);

            response.sendRedirect(request.getContextPath()+"/user/register.do");
//            request.getRequestDispatcher("/user/register.do").forward(request,response);
            return false;

        }


    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
