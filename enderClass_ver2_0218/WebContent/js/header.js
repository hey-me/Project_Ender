// 로그인 화면 불러오기
let loginForm = document.querySelector('.login-form-container');

document.querySelector('#login-btn').onclick = () =>{
  loginForm.classList.toggle('active');
}


// 로그인 화면 끄기
document.querySelector('#close-login-btn').onclick = () =>{

let input = document.getElementById('login-form');

  $("input[id='userID']").css("border", "2px solid #f0f0f0");
  $("input[id='userPW']").css("border", "2px solid #f0f0f0");

input.reset();
  loginForm.classList.remove('active');
}

// 아이디,비밀번호 선택 화면 불러오고 로그인 창은 닫기
let selectForm = document.querySelector('.select-form-container');

document.querySelector('#select-btn').onclick = () =>{
	selectForm.classList.toggle('active');
	loginForm.classList.remove('active');
}

// 아이디,비밀번호 선택 화면 닫기
document.querySelector('#close-select-btn').onclick = () =>{

let input = document.getElementById('select-form');

selectForm.classList.remove('active');

}

// 아이디 찾기 화면 불러오고 선택 창은 닫기
let searchIDForm = document.querySelector('.searchID-form-container');

document.querySelector('#searchID').onclick = () =>{
	searchIDForm.classList.toggle('active');
	selectForm.classList.remove('active');
}

// 아이디 찾기 화면 닫기
document.querySelector('#close-searchID-btn').onclick = () =>{

let input = document.getElementById('searchID-form');

input.reset();

searchIDForm.classList.remove('active');

}

// 아이디 찾기 닫고 선택 창 열기
document.querySelector('#backID-btn').onclick = () =>{

let input = document.getElementById('searchID-form');

input.reset();

searchIDForm.classList.remove('active');
selectForm.classList.toggle('active');
}

// 비번 찾기 화면 불러오고 선택 창은 닫기
let searchPWForm = document.querySelector('.searchPW-form-container');

document.querySelector('#searchPW').onclick = () =>{
	searchPWForm.classList.toggle('active');
	selectForm.classList.remove('active');
}

// 비번 찾기 화면 닫기
document.querySelector('#close-searchPW-btn').onclick = () =>{

let input = document.getElementById('searchPW-form');

input.reset();

searchPWForm.classList.remove('active');

}

// 비번 찾기 닫고 선택 창 열기
document.querySelector('#backPW-btn').onclick = () =>{

let input = document.getElementById('searchPW-form');

input.reset();

$("#searchID_text").text("");
$("#resultPW_text").text("");

searchPWForm.classList.remove('active');
selectForm.classList.toggle('active');
}


// 회원가입 폼 선택
let registForm = document.querySelector('.regist-form-container');

// 회원가입 클릭하면 active, 로그인 창은 제거
document.querySelector('#regist-btn').onclick = () =>{
	registForm.classList.toggle('active');
	loginForm.classList.remove('active');
}

// 유효성 검사


// X 누르면 회원가입창 닫음
document.querySelector('#close-regist-btn').onclick = () =>{

  let input = document.getElementById('regist-form');
  
$("#nameCheck_text").text("");
$("#idCheck_text").text("");
$("#pwCheck_text").text("");
$("#pwCheck2_text").text("");
$("#phoneCheck_text").text("");
  
  $("input[id='userName']").css("border", "2px solid #f0f0f0");
  $("input[id='RuserID']").css("border", "2px solid #f0f0f0");
  $("input[id='RuserPW']").css("border", "2px solid #f0f0f0");
  $("input[id='userPW2']").css("border", "2px solid #f0f0f0");
  $("input[id='userBirth']").css("border", "2px solid #f0f0f0");
  $("input[id='userPhone']").css("border", "2px solid #f0f0f0");
  $("input[id='userAddress']").css("border", "2px solid #f0f0f0");
  
  
  input.reset();
  registForm.classList.remove('active');
}

$(function() {
    $("#userName").keydown(function (event) {
        //엔터키를 클릭시
        if (event.which === 13) {
            //비밀번호로 포커스를 이동시킴
            $('#RuserID').focus();
        }
    });
    $("#RuserID").keydown(function (event) {
        //엔터키를 클릭시
        if (event.which === 13) {
            //비밀번호로 포커스를 이동시킴
            $('#RuserPW').focus();
        }
    });
    $("#RuserPW").keydown(function (event) {
        //엔터키를 클릭시
        if (event.which === 13) {
            //비밀번호로 포커스를 이동시킴
            $('#userPW2').focus();
        }
    });
  
    
})
// 도로 API를 통해 주소 검색 창 띄우기
function goPopup() {
	var pop = window.open("./juso", "pop",
		"width=570,height=420 scrollbars=yes, resizable=yes");
}

function jusoCallBack(roadFullAddr) {
	var addressEl = document.querySelector("#userAddress");
	addressEl.value = roadFullAddr;
}


//스크롤 했을 때 기능 
window.onscroll = () =>{

  if(window.scrollY > 80){
    document.querySelector('.header .header-2').classList.add('active');
  }else{
    document.querySelector('.header .header-2').classList.remove('active');
  }

}

function menuToggle(){
  const toggleMenu = document.querySelector('.menu');
  toggleMenu.classList.toggle('active')
}