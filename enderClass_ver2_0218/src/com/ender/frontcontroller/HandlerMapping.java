package com.ender.frontcontroller;

import java.util.HashMap;

import com.ender.controller.Controller;
import com.ender.controller.SearchIdController;
import com.ender.controller.SearchPwController;
import com.ender.controller.UserBookListController;
import com.ender.controller.UserCartDeleteController;
import com.ender.controller.UserCartInsertController;
import com.ender.controller.UserCartListController;
import com.ender.controller.UserCartRegisterController;
import com.ender.controller.UserIdContentController;
import com.ender.controller.UserDeleteController;
import com.ender.controller.UserGradeUpgradeController;
import com.ender.controller.UserIdCheckController;
import com.ender.controller.UserInsertController;
import com.ender.controller.UserListController;
import com.ender.controller.UserLoginController;
import com.ender.controller.UserLogoutController;
import com.ender.controller.UserNameContentController;
import com.ender.controller.UserNameListController;
import com.ender.controller.UserOrderInsertController;
import com.ender.controller.UserOrderListController;
import com.ender.controller.UserProfileController;
import com.ender.controller.UserPwCheckController;
import com.ender.controller.UserUpdateController;
import com.ender.controller.WatchGalleryController;
import com.ender.controller.WatchProfessorController;
import com.ender.controller.WatchVideoController;
import com.ender.controller.BookContentController;
import com.ender.controller.BookDeleteController;
import com.ender.controller.BookInsertController;
import com.ender.controller.BookListController;
import com.ender.controller.BookNumController;
import com.ender.controller.BookRegisterController;
import com.ender.controller.ClassContentController;
import com.ender.controller.ClassDeleteController;
import com.ender.controller.ClassInsertController;
import com.ender.controller.UserClassListController;
import com.ender.controller.ClassListController;
import com.ender.controller.ClassRegisterController;
import com.ender.controller.ClassUpdateController;


public class HandlerMapping {

	// 핸들을 가지고 해당 컨트롤러를 찾아오게끔
	private HashMap<String, Controller> map;

	public HandlerMapping() {
		map = new HashMap<String, Controller>();
		
		// 유저 정보 관련
		map.put("/userInsert.do", new UserInsertController());
		map.put("/userIdCheck.do", new UserIdCheckController());
		map.put("/userPwCheck.do", new UserPwCheckController());
		map.put("/userLogin.do", new UserLoginController());
		map.put("/userLogout.do", new UserLogoutController());
		map.put("/userIdContent.do", new UserIdContentController());
		map.put("/userNameContent.do", new UserNameContentController());
		map.put("/userNameList.do", new UserNameListController());
		map.put("/userList.do", new UserListController());
		map.put("/userUpdate.do", new UserUpdateController());
		map.put("/userDelete.do", new UserDeleteController());
		
		// 회원 정보 찾기
		map.put("/searchID.do", new SearchIdController());
		map.put("/searchPW.do", new SearchPwController());
		
		// 프로필
		map.put("/userProfile.do", new UserProfileController());
//		map.put("/userImage.do", new UserImageController());
		
		// 동영상
		map.put("/watchVideo.do", new WatchVideoController());
		
		// 사진첩
		map.put("/watchGallery.do", new WatchGalleryController());
		
		// 교수
		map.put("/watchProfessor.do", new WatchProfessorController());
		
		
		//admin전용 페이지
		map.put("/classContent.do", new ClassContentController());
		map.put("/classDelete.do", new ClassDeleteController());
		map.put("/classInsert.do", new ClassInsertController());
		map.put("/classList.do", new ClassListController());
		map.put("/classRegister.do", new ClassRegisterController());
		map.put("/classUpdate.do", new ClassUpdateController());
		map.put("/bookContent.do", new BookContentController());
		map.put("/bookDelete.do", new BookDeleteController());
		map.put("/bookInsert.do", new BookInsertController());
		map.put("/bookList.do", new BookListController());
		map.put("/bookRegister.do", new BookRegisterController());
		map.put("/bookNum.do", new BookNumController());
		
		
		//user전용 페이지
		map.put("/userCartList.do", new UserCartListController());
		map.put("/userCartInsert.do", new UserCartInsertController());
		map.put("/userCartRegister.do", new UserCartRegisterController());
		map.put("/userCartDelete.do", new UserCartDeleteController());
		map.put("/userClassList.do", new UserClassListController());
		map.put("/userBookList.do", new UserBookListController());
		map.put("/userOrderList.do", new UserOrderListController());
		map.put("/userOrderInsert.do", new UserOrderInsertController());
		
		
	}

	public Controller getController(String command) {
		return map.get(command);
	}

}
