package net.nlpeng.web.listener;

import org.springframework.web.context.ContextLoaderListener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;

public class ServerStartupListener extends ContextLoaderListener {

	@Override
	public void contextInitialized(ServletContextEvent event) {
		// 初始化Spring的环境
		super.contextInitialized(event);
		// 将路径保存到应用范围中
		ServletContext application = event.getServletContext();
		String path = application.getContextPath();
		application.setAttribute("APP_PATH", path);
		
	}

}
