package it.corsojava.kanban.startup;

import java.security.Key;

import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

public class KanbanSettings {

	private static String dbUrl;
	private static String dbUser;
	private static String dbPass;
	private static String dbDriver;
	private static String daoFactoryClass;
	private static Key jwtKey;
		
	public static String getDbUrl() {
		return KanbanSettings.dbUrl;
	}
	public static void setDbUrl(String dbUrl) {
		KanbanSettings.dbUrl = dbUrl;
	}
	public static String getDbUser() { 
		return KanbanSettings.dbUser;
	}
	public static void setDbUser(String dbUser) {
		KanbanSettings.dbUser = dbUser;
	}
	public static String getDbPass() {
		return KanbanSettings.dbPass;
	}
	public static void setDbPass(String dbPass) {
		KanbanSettings.dbPass = dbPass;
	} 
	public static void setDbDriver(String dbDriver) {
		KanbanSettings.dbDriver=dbDriver;
	}
	public static String getDbDriver() {
		return KanbanSettings.dbDriver;
	}
	public static String getDaoFactoryClass() {
		return KanbanSettings.daoFactoryClass;
	}
	public static void setDaoFactoryClass(String daoFactory) {
		KanbanSettings.daoFactoryClass = daoFactory;
	}

	public static Key getJwtKey() {
		if(jwtKey==null) {
			jwtKey = Keys.secretKeyFor(SignatureAlgorithm.HS256);
		}
		return 	jwtKey;
	}
}

