// 전송 관련 기능

$(function() {

	$('#formSubmit').on('click', confirm);
	$('#newClass').on('submit', function() {
	return false;
	});
})

	function confirm() {
		if (c_name.value != "") {
			if (c_tr.value != "") {
				if (c_price.value != "") {
					if (c_content.value != "") {
						if (c_info.value != "") {
							if (b_num.value != "") {
								var form = document.getElementById('newClass');
								form.submit();
							}
						}
					}
				}
			}	
		} else {
			$("#submit_text").text("모든 양식을 채워주세요");
			$("#submit_text").css("color", "red");
		}
	}
	
	// 강좌 이름 유효성 검사
	const strCheck = /^[가-힣a-zA-Z0-9]+$/;
	$("#c_name").focusout(function() {
		checkName($(this).val())
	})
	function checkName(name) {
		if (name == "") {
		} else if (name != "") {
			if (!strCheck.test(c_name.value)) {
				$("#submit_text").text("특수문자는 사용할 수 없습니다.");
				$("#submit_text").css("color", "red");
				$("input[id='c_name']").css("border", "2px solid red");
			} else {
				$("input[id='c_name']").css("border", "2px solid green");
			}
		}
	}


	// 강사 유효성 검사
	$("#c_tr").focusout(function() {
		checkTr($(this).val())
	})
	function checkTr(name) {
		if (name == "") {
		} else if (name != "") {
			if (!strCheck.test(c_tr.value)) {
				$("#submit_text").text("특수문자는 사용할 수 없습니다.");
				$("#submit_text").css("color", "red");
				$("input[id='c_tr']").css("border", "2px solid red");
			} else {
				$("input[id='c_tr']").css("border", "2px solid green");
			}
		}
	}

	// 가격 유효성 검사
	$("#c_price").focusout(function() {
		checkPrice($(this).val())
	})
	function checkPrice(name) {
		if (name == "") {
		} else if (name != "") {
			if (isNaN(c_price.value)) {
				$("#submit_text").text("숫자로만 입력하세요.");
				$("#submit_text").css("color", "red");
				$("input[id='c_price']").css("border", "2px solid red");
			} else {
				$("input[id='c_price']").css("border", "2px solid green");
			}
		}
	}
	
	// 강좌 수 유효성 검사
	$("#c_content").focusout(function() {
		checkContent($(this).val())
	})
	function checkContent(name) {
		if (name == "") {
		} else if (name != "") {
			if (isNaN(c_content.value)) {
				$("#submit_text").text("숫자로만 입력하세요.");
				$("#submit_text").css("color", "red");
				$("input[id='c_content']").css("border", "2px solid red");
			} else {
				$("input[id='c_content']").css("border", "2px solid green");
			}
		}
	}
	
	//정보 유효성 검사
	$("#c_info").focusout(function() {
		checkInfo($(this).val())
	})
	function checkInfo(name) {
		if (name == "") {
		} else if (name != "") {
			if (!strCheck.test(c_info.value)) {
				$("#submit_text").text("특수문자는 사용할 수 없습니다.");
				$("#submit_text").css("color", "red");
				$("input[id='c_info']").css("border", "2px solid red");
			} else {
				$("input[id='c_info']").css("border", "2px solid green");
			}
		}
	}
	
	// 책 번호 유효성 검사
	$("#b_num").focusout(function() {
		checkImage($(this).val())
	})
	function checkNum(name) {
		if (name == "") {
			$("#submit_text").text("교재를 선택하세요.");
				$("#submit_text").css("color", "red");
		} 
	}
	



 function CheckAddClass() {
 	
 	var c_name = document.getElementById("c_name");
 	var c_tr = document.getElementById("c_tr");
 	var c_price = document.getElementById("c_price");
 	var c_content = document.getElementById("c_content");
 	var c_info = document.getElementById("c_info");
 	var b_num = document.getElementById("b_num");
 	
 	//이름 체크
 	var check = /^[가-힣a-zA-Z0-9]+$/;
 	if(c_name.value.length <2 || c_name.value.length >20) {
 		alert("[강의 이름]\n최소 2자에서 최대 20자까지 입력하세요.");
 		c_name.select();
 		c_name.focus();
 		return false;
 	} else if(!check.test(c_name.value)){
 		alert("[강의 이름]\n한글, 영문, 숫자만 입력 가능합니다.");
 		c_name.select();
 		c_name.focus();
 		return false;
 	}
 	
 	
 	//강사 체크
 	var nameCheck = /^[가-힣a-zA-Z]+$/;
 	if(c_tr.value.length <2 || c_tr.value.length >10) {
 		alert("[강사]\n최소 2자에서 최대 10자까지 입력하세요.");
 		c_tr.select();
 		c_tr.focus();
 		return false;
 	} else if(!nameCheck.test(c_tr.value)){
 		alert("[강사]\n한글, 영문만 입력 가능합니다.");
 		c_tr.select();
 		c_tr.focus();
 		return false;
 	}
 	
 	//가격 체크
 	if(c_price.value.length==0 || isNaN(c_price.value)){
 		alert("[가격]\n숫자만 입력하세요.");
 		c_price.select();
 		c_price.focus();
 		return false;
 	}
 	
 	//강의 수
 	if(c_content.value.length==0 || isNaN(c_content.value)){
 		alert("[가격]\n숫자만 입력하세요.");
 		c_content.select();
 		c_content.focus();
 		return false;
 	}
 	
 	//정보 체크
 	if(c_info.value.length ==0 || c_info.value.length >50) {
 		alert("[강의 정보]\n최대 50자까지 입력하세요.");
		c_info.select();
		c_info.focus();
		return false;
 	} else if(!check.test(c_info.value)){
 		alert("[강의 정보]\n한글, 영문, 숫자만 입력 가능합니다.");
 		c_info.select();
 		c_info.focus();
 		return false;
 	}
 	
 	//교재 체크
 	if(b_num.value.length==0 || isNaN(b_num.value)){
 		alert("[교재]\n교재를 선택하세요.");
 		b_num.select();
 		b_num.focus();
 		return false;
 	}
 }
 
 