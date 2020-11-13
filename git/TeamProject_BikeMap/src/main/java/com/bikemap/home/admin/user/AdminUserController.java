package com.bikemap.home.admin.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;

@Controller
public class AdminUserController {
	SqlSession sqlSession;

	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
}
