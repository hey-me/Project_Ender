package com.ender.model;

import java.io.InputStream;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class OrderDAO {

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

	public List<OrderListVO> orderList(String userID) {
		SqlSession session = sqlSessionFactory.openSession();
		List<OrderListVO> list = session.selectList("orderList", userID);
		session.close();

		return list;
	}
	
	public int orderInsert(OrderVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("orderInsert", vo);
		session.commit();
		session.close();
		return cnt;
	}
	
	public int ordertDelete(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.delete("ordertDelete", num);
		session.commit();
		session.close();
		return cnt;
	}

}