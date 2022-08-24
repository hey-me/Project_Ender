package com.ender.model;

import java.io.InputStream;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BookDAO {
	
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

	public List<BookVO> bookList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<BookVO> list = session.selectList("bookList");
		session.close();

		return list;
	}


	public int bookInsert(BookVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("bookInsert", vo);
		session.commit();
		session.close();
		return cnt;
	}

	public int bookDelete(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.delete("bookDelete", num);
		session.commit();
		session.close();
		return cnt;
	}

	public BookVO bookContent(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		BookVO vo = session.selectOne("bookContent", num);
		session.close();
		return vo;
	}

	public int bookUpdate(BookVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.update("bookUpdate", vo);
		session.commit();
		session.close();
		return cnt;
	}
}

