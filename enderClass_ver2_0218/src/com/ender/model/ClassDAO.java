package com.ender.model;

import java.io.InputStream;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ClassDAO {
	
	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			String resource = "com/ender/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<ClassVO> classList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<ClassVO> list = session.selectList("classList");
		session.close();

		return list;
	}

	public int classInsert(ClassVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("classInsert", vo);
		session.commit();
		session.close();
		return cnt;
	}

	public int classDelete(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.delete("classDelete", num);
		session.commit();
		session.close();
		return cnt;
	}

	public ClassVO classContent(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		ClassVO vo = session.selectOne("classContent", num);
		session.close();
		return vo;
	}

	public int classUpdate(ClassVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.update("classUpdate", vo);
		session.commit();
		session.close();
		return cnt;
	}
}
