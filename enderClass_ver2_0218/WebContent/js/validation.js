
//아이디 입력 시 중복검사 실행
		$("input[id='RuserID']").keyup(function() {
			// 중복 검사
			userIdCheck($(this).val())
		})

		function userIdCheck(id) {
			const target = document.getElementById('formSubmit');

			// 아이디 입력란이 공백일 경우 중복확인 문구 x
			if (id == "") {
				$("#idCheck_text").text("");
				$("input[id='RuserID']").css("border", "2px solid #000");
				target.disabled = false;
			}

			const IDCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

			if (!IDCheck.test(RuserID.value)) {
				$("input[id='RuserID']").css("border", "2px solid #E9967A");
				$("#idCheck_text").text("이메일을 입력해주세요");
				$("#idCheck_text").css("color", "#E9967A");
				$("#idCheck_text").css("padding-left", "10px");
				$("#idCheck_text").css("font-size", "13px");
				target.disabled = false;
			} else {

				// 아이디를 컨트롤러에 보낸 후 중복 검사
				$.ajax({
					url : "./userIdCheck.do?userID=" + id,
					type : "get",
					dataType : "json",
					success : function(result) {
						if (result.status == "ok") {

							$("input[id='RuserID']").css("border",
									"2px solid green");
							$("#idCheck_text").text("");
							target.disabled = false;
						} else {

							$("input[id='RuserID']").css("border",
									"2px solid red");
							$("#idCheck_text").text("이미 사용중인 아이디입니다");
							$("#idCheck_text").css("color", "red");
							$("#idCheck_text").css("padding-left", "10px");
							$("#idCheck_text").css("font-size", "13px");
							target.disabled = true;
						}
					},
					error : function() {
						console.log("오류");
					}
				});
			}
		}



// 이름 정규식
		const NameCheck = /^[가-힣]{2,6}$/;

		let nameCheck = false;

		$("#userName").focusout(function() {
			checkName($(this).val())
		})

		function checkName(name) {
			if (name == "") {
				$("input[id='userName']").css("border", "2px solid #000");
				$("#nameCheck_text").text("");

			} else if (name != "") {

				if (!NameCheck.test(userName.value)) {
					$("input[id='userName']").css("border", "2px solid red");
					$("#nameCheck_text").text("한글이름 2~6자리까지 입력해주세요");
					$("#nameCheck_text").css("color", "red");
					$("#nameCheck_text").css("padding-left", "10px");
					$("#nameCheck_text").css("font-size", "13px");
					nameCheck = false;
				} else {
					$("input[id='userName']").css("border", "2px solid green");
					$("#nameCheck_text").text("");
					nameCheck = true;
				}
			}
		}

		// 비밀번호 정규식
		const PWCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,12}$/;

		let pwCheck = false;

		// 실시간 중복검사 실행
		$("#RuserPW").focusout(function() {
			checkPw($(this).val())
		})

		function checkPw(pw) {

			if (pw == "") {

				$("input[id='RuserPW']").css("border", "2px solid #000");
				$("#pwCheck_text").text("");
				pwCheck = false;

			} else if (pw != "") {

				if (!PWCheck.test(RuserPW.value)) {

					$("input[id='RuserPW']").css("border", "2px solid #E9967A");
					$("#pwCheck_text")
							.text("영문자+숫자+특수기호를 사용하여 8~12자리까지 입력해주세요");
					$("#pwCheck_text").css("color", "#E9967A");
					$("#pwCheck_text").css("padding-left", "5px");
					$("#pwCheck_text").css("font-size", "13px");
					pwCheck = false;

				} else {

					$("input[id='RuserPW']").css("border", "2px solid green");
					$("#pwCheck_text").text("");
					pwCheck = true;
				}
			}
		}

		// 비밀번호 확인
		$("#userPW2").focusout(function() {
			checkPw2($(this).val())
		})

		function checkPw2(pw2) {

			if (RuserPW.value == "") {
				$("#pwCheck2_text").text("");
			}

			if (pw2 == "") {
				$("#pwCheck2_text").text("");
				$("input[id='userPW2']").css("border", "2px solid #000");
			} else {

				if ($('#userPW2').val() != $('#RuserPW').val()) {
					// 비밀번호가 서로 일치하지 않는다면
					$("#pwCheck2_text").text("비밀번호가 일치하지 않습니다"); //문구 출력
					$("input[id='userPW2']").css("border", "2px solid red");
					$("#pwCheck2_text").css("color", "red");
					$("#pwCheck2_text").css("padding-left", "10px");
					$("#pwCheck2_text").css("font-size", "13px");
				} else {
					$("input[id='userPW2']").css("border", "2px solid green");
					$("#pwCheck2_text").text("");
				}
			}

		}

		// 비밀번호 끝

		// 생년월일
		$("#userBirth").focusout(function() {
			checkBirth($(this).val())
		})

		function checkBirth(birth) {

			if (birth == "") {
				$("input[id='userBirth']").css("border", "2px solid #000");
			} else {
				$("input[id='userBirth']").css("border", "2px solid green");
			}
		}

		// 연락처
		const HPCheck = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

		let hpCheck = false;

		$("#userPhone").focusout(function() {
			checkHP($(this).val())
		})

		function checkHP(phone) {

			if (phone == "") {

				$("input[id='userPhone']").css("border", "2px solid #000");
				$("#phoneCheck_text").text("");
				hpCheck = false;
			} else {

				if (!HPCheck.test(userPhone.value)) {
					$("input[id='userPhone']").css("border",
							"2px solid #E9967A");
					$("#phoneCheck_text").text("올바른 연락처를 입력해주세요");
					$("#phoneCheck_text").css("color", "#E9967A");
					$("#phoneCheck_text").css("padding-left", "10px");
					$("#phoneCheck_text").css("font-size", "13px");
					hpCheck = false;
				} else {
					$("input[id='userPhone']").css("border", "2px solid green");
					$("#phoneCheck_text").text("");
					hpCheck = true;
				}
			}
		}

		// 주소
		$("#userAddress").focusout(function() {
			checkAd($(this).val())
		})

		function checkAd(address) {

			if (address == "") {
				$("input[id='userAddress']").css("border", "2px solid #000");
			} else {
				$("input[id='userAddress']").css("border", "2px solid green");
			}
		}
		
	
	// 로그인 부분	
$(function() {
		$('#loginSubmit').on('click', con);
		$('#login-form').on('submit', function() {
				return false;
			});
		})
		
	function con() {

		if(userID.value == ""){
		  $("#error").text("아이디 비었음");
    } else if(userPW.value == ""){
      $("#error").text("비번 비었음");
    } else {

    const login = document.getElementById('login-form');
    login.submit(); 
    
    }
	}
		

// 회원가입 부분

		$(function() {
			$('#formSubmit').on('click', confirm);
			$('#regist-form').on('submit', function() {
				return false;
			});
		})

		function confirm() {
			if (userName.value != "") {
				if (RuserID.value != "") {
					if (RuserPW.value != "") {
						if (userPW2.value != "") {
							if (userBirth.value != "") {
								if (userPhone.value != "") {
									if (userAddress.value != "") {
										const form = document
												.getElementById('regist-form');
										form.submit();
									}
								}
							}
						}
					}
				}
			}

			else {
				$("#submit_text").text("모든 양식을 다 작성해주세요.");
				$("#submit_text").css("color", "red");
			}
			
			function back() {
				$("#submit_text").text("");
			}
		setTimeout(back, 2000)
		}
