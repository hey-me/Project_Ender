	// 전송 관련 기능
	
	$(function() {

		$('#formSubmit').on('click', confirm);
		$('#newBook').on('submit', function() {
			return false;
		});

	})

	function confirm() {
		if (b_name.value != "") {
			if (b_pub.value != "") {
				if (b_info.value != "") {
					if (b_price.value != "") {
						if (b_image.value != "") {
							var form = document.getElementById('newBook');
							form.submit();
						}
					}
				}
			}
		} else {
			$("#submit_text").text("모든 양식을 채워주세요");
			$("#submit_text").css("color", "red");
		}
	}

	// 교재 이름 유효성 검사
	const strCheck = /^[가-힣a-zA-Z0-9]+$/;
	$("#b_name").focusout(function() {
		checkName($(this).val())
	})
	function checkName(name) {
		if (name == "") {
		} else if (name != "") {
			if (!strCheck.test(b_name.value)) {
				$("#submit_text").text("특수문자는 사용할 수 없습니다.");
				$("#submit_text").css("color", "red");
				$("input[id='b_name']").css("border", "2px solid red");
			} else {
				$("input[id='b_name']").css("border", "2px solid green");

			}
		}
	}


	// 출판사 유효성 검사
	$("#b_pub").focusout(function() {
		checkPub($(this).val())
	})
	function checkPub(name) {
		if (name == "") {
		} else if (name != "") {
			if (!strCheck.test(b_pub.value)) {
				$("#submit_text").text("특수문자는 사용할 수 없습니다.");
				$("#submit_text").css("color", "red");
				$("input[id='b_pub']").css("border", "2px solid red");
			} else {
				$("input[id='b_pub']").css("border", "2px solid green");
			}
		}
	}
	
	//정보 유효성 검사
	$("#b_info").focusout(function() {
		checkInfo($(this).val())
	})
	function checkInfo(name) {
		if (name == "") {
		} else if (name != "") {
			if (!strCheck.test(b_info.value)) {
				$("#submit_text").text("특수문자는 사용할 수 없습니다.");
				$("#submit_text").css("color", "red");
				$("input[id='b_info']").css("border", "2px solid red");
			} else {
				$("input[id='b_info']").css("border", "2px solid green");
			}
		}
	}

	// 가격 유효성 검사
	$("#b_price").focusout(function() {
		checkPrice($(this).val())
	})
	function checkPrice(name) {
		if (name == "") {
		} else if (name != "") {
			if (isNaN(b_price.value)) {
				$("#submit_text").text("숫자로만 입력하세요.");
				$("#submit_text").css("color", "red");
				$("input[id='b_price']").css("border", "2px solid red");
			} else {
				$("input[id='b_price']").css("border", "2px solid green");
			}
		}
	}
	
	// 이미지 유효성 검사
	$("#b_image").focusout(function() {
		checkImage($(this).val())
	})
	function checkImage(name) {
		if (name == "") {
			$("#submit_text").text("이미지를 선택하세요.");
				$("#submit_text").css("color", "red");
		} 
	}


 function CheckAddBook() {
 	
 	var b_name = document.getElementById("b_name");
 	var b_pub = document.getElementById("b_pub");
 	var b_info = document.getElementById("b_info");
 	var b_price = document.getElementById("b_price");
 	var b_image = document.getElementById("b_image");
 	
 	//이름 체크
 	var strCheck = /^[가-힣a-zA-Z0-9]+$/;
 	if(b_name.value.length <2 || b_name.value.length >20) {
 		alert("[교재 이름]\n최소 2자에서 최대 20자까지 입력하세요.");
 		b_name.select();
 		b_name.focus();
 		return false;
 	} else if(!strCheck.test(b_name.value)){
 		alert("[교재 이름]\n한글, 영문, 숫자만 입력 가능합니다.");
 		b_name.select();
 		b_name.focus();
 		return false;
 	}
 	
 	//출판사 체크
 	if(b_pub.value.length <2 || b_pub.value.length >10) {
 		alert("[출판사]\n최소 2자에서 최대 10자까지 입력하세요.");
 		b_pub.select();
 		b_pub.focus();
 		return false;
 	} else if(!strCheck.test(b_pub.value)){
 		alert("[출판사]\n한글, 영문, 숫자만 입력 가능합니다.");
 		b_pub.select();
 		b_pub.focus();
 		return false;
 	}
 	
 	//정보 체크
 	if(b_info.value =="" || b_info.value.length >50) {
 		alert("[교재 정보]\n최대 50자까지 입력하세요.");
		b_info.select();
		b_info.focus();
		return false;
 	} else if(!strCheck.test(b_info.value)){
 		alert("[교재 정보]\n한글, 영문, 숫자만 입력 가능합니다.");
 		b_info.select();
 		b_info.focus();
 		return false;
 	}
 	
 	//가격 체크
 	if(b_price.value =="" || isNaN(b_price.value)){
 		alert("[가격]\n숫자만 입력하세요.");
 		b_price.select();
 		b_price.focus();
 		return false;
 	}
 	
 	//이미지 체크
 	if(b_image.value =="" || b_image.value.length >30) {
 		alert("[교재 이미지]\n교재 이미지를 등록하세요.");
 		b_image.select();
 		b_image.focus();
 		return false;
 	}
 	
 	document.newBook.submit();

 }