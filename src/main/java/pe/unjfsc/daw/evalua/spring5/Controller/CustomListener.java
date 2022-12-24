package pe.unjfsc.daw.evalua.spring5.Controller;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;

public class CustomListener implements ServletContextListener {

    Logger logger = LoggerFactory.getLogger(CustomListener.class);

	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
	}

	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

	@Bean
	public ServletListenerRegistrationBean<ServletContextListener> customListenerBean() {
	    ServletListenerRegistrationBean<ServletContextListener> bean = new ServletListenerRegistrationBean();
	    bean.setListener(new CustomListener());
	    return bean;
	}

}
