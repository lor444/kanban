package it.corsojava.kanban.startup;

import java.util.Enumeration;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class ApplicationInit implements jakarta.servlet.ServletContextListener {
	
	public static final String PARAM_DB_DRIVER_CLASS="db.driver.class";
	public static final String PARAM_DB_URL="db.url";
	public static final String PARAM_DB_USER="db.user";
	public static final String PARAM_DB_PASS="db.pass";
	public static final String PARAM_DAO_FACTORY_CLASS="dao.factory.class";
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext ctx = sce.getServletContext();
		
		String path=ctx.getContextPath();
		System.out.println("Loading context "+path);
		Enumeration<String> en = ctx.getInitParameterNames();
		while (en.hasMoreElements()) {
			String name=en.nextElement();
			System.out.println("- "+name+" = "+ctx.getInitParameter(name));
		}
		
		KanbanSettings.setDaoFactoryClass(ctx.getInitParameter(PARAM_DAO_FACTORY_CLASS));
		KanbanSettings.setDbDriver(ctx.getInitParameter(PARAM_DB_DRIVER_CLASS));
		KanbanSettings.setDbUrl(ctx.getInitParameter(PARAM_DB_URL));
		KanbanSettings.setDbUser(ctx.getInitParameter(PARAM_DB_USER));
		KanbanSettings.setDbPass(ctx.getInitParameter(PARAM_DB_PASS));
		
		try {
			Class.forName(KanbanSettings.getDbDriver());
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		System.out.println("End of loading context "+path);
	}
	
}
