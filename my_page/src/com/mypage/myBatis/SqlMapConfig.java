package com.mypage.myBatis;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {

	// mybatis는 sqlSessionFactory 없으면 사용 불가
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/mypage/myBatis/Configuration.xml";
		
		try {
			//자바 io 객체
			Reader reader = Resources.getResourceAsReader(resource);
			
			if (sqlSessionFactory == null) {
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static SqlSessionFactory getSqlSession() {
		return sqlSessionFactory;
	}
}
