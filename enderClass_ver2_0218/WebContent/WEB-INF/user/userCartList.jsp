<%@page import="com.ender.model.ClassVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ender.model.ClassDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="css/ender.css">

<link
	href='https:/cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<meta charset="UTF-8">
<title>Ender Online Class</title>
<%
int num = 0;
int aaa = 100;
int cnt = 0;
%>
<script type="text/javascript">
	var a=0;
	var total = 0;
	function each(checkbox){
		total =0;
		const ac=document.querySelectorAll('input[name="isCheck"]:checked');
			session.setAttribute("isCheck", ac.value);
		const ic=document.querySelectorAll("input[name='isCheck']");
    		if(ac.length!=ic.length){
    	   	$("input[name='allCheck']").prop("checked",false);	
	
	    	}else{
    	   	$("input[name='allCheck']").prop("checked",true);	
    	}
    }
	function nightlight(num,aaa) {
		var result = parseInt(document.getElementById(aaa).value);
		var checked = document.getElementById(num).checked;
		if (checked) {
			total += result;
		} else {
			total -= result;
			if(total<=0){
				total=0;
			}
		}
		document.getElementById("sum").value = total;
	}
	function getPost(mode) { 
		var theForm = document.frmSubmit; 
		if(mode == "01") { 
			theForm.method = "post"; 
			theForm.action = "userOrderInsert.do"; 
			} else if(mode == "02") {
theForm.method = "post"; 
theForm.action = "userCartDelete.do" } 
		theForm.submit(); 
		}

	
</script>
</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->

	<form name=frmSubmit>
		<table class='table table-hover'>
			<!-- 최종주문내역 보내는 좌표 수정 -->
			<tr>
				<th>강좌</th>
				<th>강사</th>
				<th>강좌 금액</th>
				<th></th>
				<th>교재</th>
				<th>교재 금액</th>
				<th></th>
				<th><input type="checkbox" id="allCheck" name="allCheck"
					value="${vo.c_num}">선택</th>
				<th></th>
			</tr>
			<c:forEach var="vo" items="${usercartlist}">
				<tr>
					<td>${vo.c_name}</td>
					<td>${vo.c_tr}</td>
					<td>${vo.c_price}</td>
					<td><img alt="" src="./image/book-10.png" width="50"
						height="50"></td>
					<td>${vo.b_name}</td>
					<%-- 					<td>${vo.b_price}</td> --%>
					<td><input type="text" value="${vo.b_price}"
						readonly="readonly"></td>
					<td><input type="hidden" name="b_num" value="${vo.b_num}">
					</td>

					<td><input type="checkbox" id="<%=num%>" name="isCheck"
						value="${vo.c_num}" onClick="nightlight(<%=num%>,<%=aaa%>)"></td>
					<td><input type="text" id="<%=aaa %>" name="sum"
						value="${vo.c_price+vo.b_price}"></td>
					<%
					num++;
					aaa++;
					cnt++;
					%>
				</tr>

			</c:forEach>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			
			
			
			
			
			
			<th><input id="sum" type="text" size="7" value="0">원</th>
			<th><p id="total_text"></p></th>
			</th>
			<th><input type="button" value="주문" class="btn btn-danger"
				onClick="getPost('01')" /></th>
			<script>
            document.getElementById("allCheck").onclick=
            function() {
            	if( $("#allCheck").is(":checked") ){
                $("input[name='isCheck']").prop("checked", true);
//                 const cnt = document.getElementById("sum").value;

            
                
                $('#total_text').text(cnt + "원");
                
            	}else{
            		$("input[name='isCheck']").prop("checked", false);
            		document.getElementById("sum").value = 0;
            	}
            	
            }
        </script>
			<th><input type="button" value="삭제하기" class="btn btn-danger"
				onClick="getPost('02')"></th>
		</table>
	</form>
	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</body>
</html>