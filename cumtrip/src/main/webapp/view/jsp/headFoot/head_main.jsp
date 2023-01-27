<%@page import="cumtrip.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(document).ready(function(){

    var navHeight = $(".haederTop_wrapBox0").height()*2; 
    //navHeight 의 높이를 구하기

    $(".haederTop_wrapBox0").css('background', '#fff');
    $(".haederTop_wrapBox0").css("position", "inherit");
    $("#top_login").css("color","#000");
    $("#SignUp").css("color","#000");
    $(".logolink img").attr("src","/cumtrip/view/images/logo.svg");
    //스크롤시 나타날 객체 미리 숨기기

    $(window).scroll(function(){  // 윈도우 스크롤 기능 작동
        var rollIt = $(this).scrollTop() >= navHeight; 
// 스크롤의 정도가 navHeight 의 값을 넘었을 때 == 윈도우 스크롤의 값이 navHeight 의 높이와 같거나 크다

/*
scrollTop 은 윈도우에서 스크롤의 위치가 가장 상위에 있다는 의미로 해석
스크롤의 위치가 화면 아래일수록 == scrollTop 의 값이 커짐
*/

    if(rollIt){ 
		//윈도우 스크롤 기능의 값이 navHeight 의 높이와 같거나 크면
            $(".haederTop_wrapBox0").css("position", "fixed").css('background', '#FF9614');
            $("#top_login").css("color","#fff");
            $("#SignUp").css("color","#fff");
            $(".logolink img").attr("src","/cumtrip/view/images/logo3.png");
        }
        else{
            $(".haederTop_wrapBox0").css('background', '#fff').css("position", "inherit");
            $("#top_login").css("color","#000");
            $("#SignUp").css("color","#000");
            $(".logolink img").attr("src","/cumtrip/view/images/logo.svg");
        }
    });
    
});
</script>

    <link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/font.css">
<div class="haederTop_wrapBox0">
<div class="haederTop haederTop_top">
	<a href="<%= request.getContextPath() %>/view/jsp/index.jsp" class="logolink"><img src="<%= request.getContextPath() %>/view/images/logo.svg" ></a>
	<nav class="navbar navbar-expand-sm navbar-info">
	   	
	  <form class="form-inline">
	  
<!-- 	   <select class="form-control" id="stype">
	   		<option value="">전체</option>
	   		<option value="subject">제목</option>
	   		<option value="writer">작성자</option>
	   		<option value="content">내용</option>
	   	</select> -->
   	
	    <!-- <input id="sword" class="form-control mr-sm-2" type="text" placeholder="Search">
	    <button id="search" class="btn btn-primary" type="button">Search</button> -->
	  </form>
	</nav>

<% 
	//JSP문서에서 세션은 'session'이라는 이름으로 이미 생성되어 있다.
	MemberVO loginMemVo = (MemberVO)session.getAttribute("loginMember");

%>


<div class="login_wrap_TopRight">
<!-- 로그인시작 -->
<% if(loginMemVo == null || loginMemVo.getMem_email().length() == 0 ){ //로그인관련 세션이 없을때 %>
<!-- 로그인시작 -->

	<a data-toggle="modal" href="#loginModal" id="top_login" class="f4">LOGIN</a>
	  <div class="modal fade" id="loginModal" role="dialog">
	   <div class="modal-dialog">
	    <div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
	     <div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
	      <h1 class="modal-title f4" align="center">로그인</h1>
	      <button type="button" class="close" data-dismiss="modal">×</button>
	
	     </div>
	     <div class="modal-body">
	         <!-- 본문시작 -->
		      <form id="login_form" action="<%= request.getContextPath() %>/sessionLogin.do" method="get">
		      <input type= "hidden" name="url" value="<%=(String)session.getAttribute("url") %>">
		      	<label for="id" class="f4">ID</label><input type="text" class="form-control control-label col-sm-3" id="id" name="memid" placeholder="id">
		      	<label for="pass" class="f4">PASS</label><input type="password" class="form-control control-label col-sm-3" id="pass" name="mempass" placeholder="pass"><br>
		      	<input type="submit" value="확인" id="login_button"  class="btn btn-dark"><br><br>
		      	<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/findID.jsp" class="f4 login_qwe1" style="text-decoration: underline;" >아이디 찾기</a>
		      	<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/findPass.jsp" class="f4 login_qwe1" style="text-decoration: underline;" >비밀번호 찾기</a>
		      	<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/singIn.jsp" class="f4 login_qwe1" style="text-decoration: underline;" >회원가입</a>
		      </form>
	     </div>
	    </div>
	   </div>
	  </div>
	  
	  <!-- 로그인 마침 -->
  
  	<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/singIn.jsp" class="topButton f4" id="SignUp">회원가입</a>
  	
<%	}else{  //로그인관련 세션이 있을때(로그인이 되었을때)
	
%>
	<h3 class="successID f4"><%= loginMemVo.getMem_email() %>님 반갑습니다</h3>
<% if(loginMemVo.getMem_email().equals("admin")) {%>
	<a href="<%= request.getContextPath() %>/admin/index.html" class="mypageButton f4">관리자</a>
<% } %>
<% if(!loginMemVo.getMem_email().equals("admin")) {%>
	<a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_index.jsp" class="mypageButton f4">마이페이지</a>
<% } %>
	<a href="<%= request.getContextPath() %>/sessionLogout.do" class="logoutButton f4">로그아웃</a>
<%	
}
%>
</div>
  	
</div>
	</div>
	