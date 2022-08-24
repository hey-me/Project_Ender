package com.ender.usermodel;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class UserDAO {

	private static SqlSessionFactory sqlSessionFactory;

	// xml을 사용하기 위해
	static {

		try {
			String resource = "com/ender/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 회원가입
	public int userInsert(UserDTO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		int cnt = sqlSession.insert("userInsert", vo);

		sqlSession.commit();

		sqlSession.close();

		return cnt;
	}

	// 아이디 중복 검사
	public boolean userIdCheck(String userID) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		return (Integer) sqlSession.selectOne("userIdCheck", userID) == 1;

	}

	// 비밀번호 검사
	public boolean userPwCheck(String userPW) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		return (Integer) sqlSession.selectOne("userPwCheck", userPW) == 1;

	}

	// 로그인
	public int userLogin(UserDTO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		int cnt = sqlSession.selectOne("userLogin", vo);

		sqlSession.close();

		return cnt;

	}

	// 아이디 찾기
	public boolean searchID(UserDTO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		return (Integer) sqlSession.selectOne("searchID", vo) == 1;

	}

	// 비밀번호 찾기
	public boolean searchPW(UserDTO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		return (Integer) sqlSession.selectOne("searchPW", vo) == 1;

	}

	// 아이디로 상세정보 보기
	public UserDTO userIdContent(String userID) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		UserDTO vo = sqlSession.selectOne("userIdContent", userID);

		sqlSession.close();

		return vo;
	}

	// 이름으로 상세정보 보기
	public UserDTO userNameContent(String userName) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		UserDTO vo = sqlSession.selectOne("userNameContent", userName);

		sqlSession.close();

		return vo;
	}

	// 이름으로 목록 보기
	public List<UserDTO> userNameList(String userName) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		List<UserDTO> list = sqlSession.selectList("userNameList", userName);

		sqlSession.close();

		return list;
	}

	// 생년월일로 목록 보기
	public List<UserDTO> userBirthList(String userBirth) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		List<UserDTO> list = sqlSession.selectList("userBirthList", userBirth);

		sqlSession.close();

		return list;
	}

	public List<UserDTO> userList() {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		List<UserDTO> list = sqlSession.selectList("userList");

		sqlSession.close();

		return list;

	}

	// 정보 수정
	public int userUpdate(UserDTO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		int cnt = sqlSession.update("userUpdate", vo);

		sqlSession.commit();

		sqlSession.close();

		return cnt;
	}

	// 회원 탈퇴
	public int userDelete(String userID) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		int cnt = sqlSession.delete("userDelete", userID);

		sqlSession.commit();

		sqlSession.close();

		return cnt;
	}

	public int userProfile(UserDTO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		int cnt = sqlSession.update("userProfile", vo);

		sqlSession.commit();

		sqlSession.close();

		return cnt;
	}

	public int userImage(String userID) {

		SqlSession sqlSession = sqlSessionFactory.openSession();

		int cnt = sqlSession.selectOne("userImage", userID);

		sqlSession.close();

		return cnt;
	}
}
