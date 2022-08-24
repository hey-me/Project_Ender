// 비밀번호 검사
$("input[id='userPW']").keypress(function(event) {
			// 중복 검사
			if (event.which === 13){
			loginPwCheck($(this).val())
			}
		})

function loginPwCheck(pw){
			if (pw == "") {
			$("#loginPW_text").text("");
			} else {
			// 비밀번호를 컨트롤러에 보낸 후 중복 검사
				$.ajax({
					url : "./userPwCheck.do?userPW=" + pw,
					type : "get",
					dataType : "json",
					success : function(result) {
						if (result.status == "ok") {

							$("input[id='userPW']").css("border",
									"2px solid red");
									$("#loginPW_text").text("비밀번호가 틀립니다");
							$("#loginPW_text").css("color", "red");
							$("#loginPW_text").css("padding", "0");
							$("#loginPW_text").css("font-size", "13px");
						} else {

							$("input[id='userPW']").css("border",
									"2px solid green");
							$("#loginPW_text").text("비밀번호가 맞습니다");
							$("#loginPW_text").css("color", "green");
							$("#loginPW_text").css("padding", "0");
							$("#loginPW_text").css("font-size", "13px");
						}
					},
					error : function() {
						console.log("오류");
					}
				});
			}
		}