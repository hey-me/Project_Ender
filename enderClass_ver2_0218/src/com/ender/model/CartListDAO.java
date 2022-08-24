package com.ender.model;

import java.io.InputStream;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CartListDAO {

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

	public List<CartListVO> cartList(String userID) {
		SqlSession session = sqlSessionFactory.openSession();
		List<CartListVO> list = session.selectList("userCartList", userID);
		session.close();

		return list;
	}
	
	public int cartInsert(CartVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("userCartInsert", vo);
		session.commit();
		session.close();
		return cnt;
	}
	
	public int cartDelete(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.delete("userCartDelete", num);
		session.commit();
		session.close();
		return cnt;
	}

}