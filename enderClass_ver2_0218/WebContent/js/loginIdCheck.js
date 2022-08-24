// 로그인 부분
$("input[id='userID']").keyup(function() {
			// 중복 검사
			loginIdCheck($(this).val())
		})
		
		function loginIdCheck(id){
			if (id == "") {
			$("input[id='userID']").css("border",
									"2px solid #f0f0f0");
			} else {
			// 아이디를 컨트롤러에 보낸 후 중복 검사
				$.ajax({
					url : "./userIdCheck.do?userID=" + id,
					type : "get",
					dataType : "json",
					success : function(result) {
						if (result.status == "ok") {

							$("input[id='userID']").css("border",
									"2px solid red");
									$("#loginID_text").text("존재하지 않는 아이디입니다");
							$("#loginID_text").css("color", "red");
							$("#loginID_text").css("padding", "0");
							$("#loginID_text").css("font-size", "13px");
						} else {

							$("input[id='userID']").css("border",
									"2px solid green");
							$("#loginID_text").text("아이디가 존재합니다");
							$("#loginID_text").css("color", "green");
							$("#loginID_text").css("padding", "0");
							$("#loginID_text").css("font-size", "13px");
						}
					},
					error : function() {
						console.log("오류");
					}
				});
			}
		}