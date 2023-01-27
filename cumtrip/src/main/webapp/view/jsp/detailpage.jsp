<%@page import="cumtrip.vo.MemberVO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	

	<%
	
	 String url = request.getRequestURI();
	 String query = request.getQueryString();
	 	session.setAttribute("url", url+"?"+query);
	 
	 %>

<meta charset="UTF-8">
<title>Lodding..</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/main.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/font.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uhaf2smrg5"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="../css/gallery.css" media="screen" />
<script src="<%= request.getContextPath() %>/view/js/main.js"></script> 
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uhaf2smrg5"></script>
<script src="<%= request.getContextPath() %>/view/admin/js/typeahead.bundle.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uhaf2smrg5"></script>
 
 
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script  src="../js/typeahead.bundle.js"></script>
 
  
  
  
<script src="<%= request.getContextPath() %>/view/admin/js/typeahead.bundle.js"></script>

<link rel="stylesheet" href="/cumtrip/view/css/fakeLoader.css">
<link rel="shortcut icon" type="image/x-icon" href="../images/titleLogo.png">


<style>

.addr_back_s{
    border-bottom: 1px solid #666;
    display: block;
    margin-bottom: 20px;
    padding-bottom: 10px;
}

.f4_sub_ts{
    border-bottom: 1px solid #666;
    padding-bottom: 10px;
    margin-bottom: 0;
    padding-top: 30px;
}

.accordion-item{
border: 1px solid #666 !important;
    margin-top: 20px !important;
}

#addr{
display: inline-block;
    margin-bottom: 0;
    padding-bottom: 10px;
}
#localintro{

}

.around .f4{
    padding: 0;
    margin: 0;
    padding-left: 20px;
    font-size: 20px;
    white-space: normal;
    width: 200px;
}
.around p{
    display: inline-block;
    padding-left: 20px;
}

.around a{
    display: inline-block;
    alignment-baseline: middle;
    float: left;
}

.card_back_td{
    border: 1px solid #666;
    display: inline-block;
    padding: 20px;
    width: 100%;
}

.profile{
	float : left;
	width : 50px;
	height: 50px;
	border-radius: 50%;
}


.card-body {
    width: 518px;
    height: 400px;
    border-radius: 30px;
    float: left;
}
#localintro, #review{
margin-left: 0 !important; 
margin-right: 0 !important; 
}

#name {
	margin-left: 0;
    width: 100%;
}

#web {
	    text-decoration: underline;
    float: right;
}

.name_Box{
    width: 1200px;
    
    padding-bottom: 20px;
}

.f3{
float: left;
}

#demo {
    width: 620px;
    height: 391px;
    float: right;
}

.clear {
	clear: both;
}

#localintro, #review {
	margin-left: 15%;
	margin-right: 15%;
}

#restaurant, #space, #reviewscore {
    width: 350px;
    float: left;
    margin-right: 30px;
}

#map {
    width: 400px;
    height: 510px;
    margin: 56px;
    margin-left: 780px;
    border: 1px solid #666;
}

.aroundimg {
	width: 150px;
    height: 150px;
    float: left;
}

.around {
    height: 160px;
    margin-bottom: 5px;
}


.star {
	position: relative;
	font-size: 2rem;
	color: #ddd;
}

.star input {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	opacity: 0;
	cursor: pointer;
}

.star #substar {
	width: 0;
	position: absolute;
	left: 0;
	color: red;
	overflow: hidden;
	pointer-events: none;
}

.comment {
	border: 0.1px solid whitegray;
	text-align: center
}

.carousel-inner img {
	width: 100%;
	height: 400px;
}
.carousel-inner{
    width: 100% !important;
}

.reivewphoto {
	width: 300px;
	height: 300px;
}

.btn1, .falsebtn1 {
	border: none;
	margin: auto 17px;
	display: inline-block;
}

.btn2, .falsebtn2 {
	border: none;
}
.date{
	display: inline-block;
}
.re{
	margin: 60px;
}

.modify, .falsemodify{
	margin-left: 260px;
	display: inline-block;
}
.delete, .falsedelete{
	margin-left: 10px;
}
.id {
	display: inline-block;
}

.label1{
	background-color: #FF9614;
	border-color: white;
	border-radius: 10px;
	font-family: 'twayair', sans-serif;
	color: white;
	width: 120px;
	text-align: center;
    line-height: 30px;

}
#detailcenter .card-body{
border:0;
margin-right: 20px;
     overflow-y: auto !important;
     letter-spacing: -1.2px;
}



.f1 best_s{
padding-top: 50px;
}

</style>


<%
String midno = request.getParameter("midno");
%>

<%
 String tle="";
%>

  <script type="text/javascript">
  
  	$(function(){
  		midno = "<%=midno%>";
  		$.ajax({
  			url : "/cumtrip/detailplace.do",
  			type :'post',
  			async:false,
  			data : {"midno" : midno},
  			success : function(res){
  				str = '<p><h3 class="f3">'+res.mid_name +'</h3></p>';
  				/* $('#title').text(res.mid_name); */
  				tle=res.mid_name
  				
  				str += '<a href="'+res.mid_web+'" id="web" class="f4" target="_blank">웹사이트 접속</a>';
  				$("#name").append(str);
  				$("#intro").append(res.mid_ex);
  				location2 = res.mid_location;
  				$("#addr").text(location2);
  				midx = res.mid_x;
  				midy = res.mid_y;
  				midno = res.mid_no;
  				$('.inputmidno').html('<input type="hidden" value="'+midno+'" name="midno">');
  				
  				
  			    first = location2.indexOf(" ");
  				temp = location2.substr(first+1);
  				second = temp.indexOf(" ");
  				si = location2.substr(0, first);
  				gun = location2.substr(first+1,second);
  			},
  			
  			error: function(xhr){
  			},
  			dataType: 'json'
  		})
  		
  		
  			$.ajax({
				url: "/cumtrip/views.do",
				type: 'get',
				data : {"midno" : midno},
				success : function(res){
				},
				error: function(xhr){
					alert(xhr.status);
				},
				dataType: 'json'
				})
  		$.ajax({
  			
  			url: "/cumtrip/selectonephoto.do",
  			type: "post",
  			data:{"midno" :midno },
  			success : function(res){
  				str = "";
  				main = midno.substr(0,1);
  				$.each(res, function(i, v){
  				if(i==0){
  				str += '<div class="carousel-item active">';
  			    str += '<img src="/cumtrip/'+main+'Photo.do?filename='+v+'" alt="'+v+'" class="slidephoto" >';
  			    str += '</div>';
  				}else{
  			    
  			    str += '<div class="carousel-item">';
  			    str += '<img src="/cumtrip/'+main+'Photo.do?filename='+v+'" alt="'+v+'" class="slidephoto" >';
  			    str += '</div>';}
  				})
  				$('.carousel-inner').html(str);
  			}
  		})
  		
  			$.ajax({
  		
  			url: "/cumtrip/aroundspace.do",
  			type: "get",
  			data:{"si" : si,
  				 "gun" : gun},
  			success : function(res){
  				str = "";
  				$.each(res, function(i, v){
  				str += '<div class="around">';
  			    str += '<a href="detailpage.jsp?midno='+v.mid_no+'"><img src="/cumtrip/TPhoto.do?filename='+v.photo_path+'" alt="'+v.photo_path+'" class="aroundimg"></a>';
  			    str += '<p class="f4">'+v.mid_name+'</p>';
  			  str += '<br>';
  			    str += '<p>'+v.main_cate+'</p>';
  			    str += '</div>';
  				})
  				$('#space').append(str);
  			}
  		})
  			$.ajax({
  			
  			url: "/cumtrip/aroundrestaurant.do",
  			type: "get",
  			async:false,
  			data:{"si" : si,
 				 "gun" : gun},
  			success : function(res){
  				str = "";
  				$.each(res, function(i, v){
  				str += '<div class="around">';
  			    str += '<a href="detailpage.jsp?midno='+v.mid_no+'"><img src="/cumtrip/FPhoto.do?filename='+v.photo_path+'" alt="'+v.photo_path+'" class="aroundimg"></a>';
  			    str += '<p class="f4">'+v.mid_name+'</p>  ';
  			  str += '<br>';
  			    str += '<p>'+v.main_cate+'</p>  ';
  			    str += '</div>';
  				})
  				$('#restaurant').append(str);
  			}
  		})
  		
  			$.ajax({
  			url: "/cumtrip/selectallreview.do",
  			type : "post",
  			data: {
  				"midno" : midno
  			},
  			success: function(res){
  				 
  				$.each(res, function(i,v){
  				str  = '<div class="detailreview">';
  			   	str += '<div>';
  			   	str += '<img src="/cumtrip/Mphoto.do?filename='+v.mem_photo+'" class="profile"><span class="id">'+v.mem_email+'</span>';
  			    str += '<div id="d2">';
  			    <% 
					//JSP문서에서 세션은 'session'이라는 이름으로 이미 생성되어 있다.
					MemberVO loginMemVo = (MemberVO)session.getAttribute("loginMember");
  			    	if(loginMemVo !=null){
  			    %>
  			  	 if("<%=loginMemVo.getMem_email()%>" == v.mem_email ){
					    str += '<input type="button" class="delete" idx="' + v.mre_no + '" value="삭제" style="width: 50px; line-height: 30px; float: right"></div>';
		  			  	str += '<input type="button" class="modify" idx="' + v.mre_no + '" value="수정"  style="width: 50px; line-height: 30px; float: right">';
  			  			}
  			  	<% }%>
  			  	 
  			   	str += '</div>';	
  			   	str += '<div class="clear"></div>';
  			   	str += '<span class="star">★★★★★<span style="width:'+v.mre_point*15 +'px;  position: absolute;  left: 0;';  
  			   	str += 'pointer-events: none;  color: red;    overflow: hidden;">★★★★★</span>';
  	 			str += '</span>';
  			   	str += '<div class="contentbox">';
  			   	str += '<h5 class="f4">'+v.mre_title+'</h5>';
  	 			str += '<div id="d1"><p class="date">'+v.mre_date+'<span class="re">';
  	 			
  	 			<%
  	 				if(loginMemVo == null){ // 로그인 관련 세션이 없을 때
  	 			%>
  	 			str += '<button type="button" class="falsebtn1" data-toggle="modal" data-target="#loginModal"><img  src="../images/좋아요.png" style="width: 25px; height: 25px;"></button>';
  	 			str += '<button type="button" class="falsebtn2" data-toggle="modal" data-target="#loginModal"><img  src="../images/신고.png" style="width: 27px; height: 26px; margin-left: 10px;"></button>';
  			    <%
  			  		} else { //로그인관련 세션이 있을때(로그인이 되었을때)
  			  	%>  	 			
  			  	str += '<button type="button" class="btn1"><input type="hidden" value="'+v.mre_no+'" class="mreno"><img class="like1" src="../images/좋아요.png" style="width: 25px; height: 25px;"></button>';
  			  	str += '<button type="button" class="btn2"><input type="hidden" value="'+v.mre_no+'" class="mreno"><img class="hate1" src="../images/신고.png" style="width: 27px; height: 26px; margin-left: 10px;"></button>';
  			  	<%	
  			  		}
  			    %>		
  			    
  	 			str += '</span></p></div>';
  			   	str +=	'<div class="content">'+v.mre_content+'</div>';
  			 	if(typeof v.mre_imgpath != 'undefined'){
  	  			str +=  '<img src="/cumtrip/reviewphoto.do?filename='+v.mre_imgpath+'" class="reivewphoto">';}
  			   	str +=	'<div class="accordion accordion-flush">';
  			   	str +=  '<div class="accordion-item">';
  			    str += '<h2 class="accordion-header" id="flush-headingOne">';
  			    str +=  '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse'+i+'" aria-expanded="false" aria-controls="flush-collapse'+i+'">';
  			    str +=   '댓글창<input type="hidden" value="'+v.mre_no+'" class="mreno"></button>';
  			    str += '</h2> ';
  			    str +='<div id="flush-collapse'+i+'" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">';
  			    str += '<div class="accordion-body"></div>';
  			    str += '</div>';
  			    str += '</div>';
  			    str += '</div></div></div><hr>';
  			   	$('#reviewlist').append(str);
  			   	
  	
  				})
  			},
  			error: function(xhr){
  				alert(xhr.status);
  			},
  			dataType: 'json'
  			})
  				
  			
  			$(document).on('click','.accordion-button', function(){
  			 mreno = $(this).find('.mreno').val();
  		   commentplace	 = $(this).parents('.accordion-item').find('.accordion-body')
  		   
  				$.ajax({
  					url : "/cumtrip/selectcomment.do",
  					type : 'get',
  					data : {"mreno" : mreno},
  					success : function(res){
  						

  						str = '<input type="text" name="reviewcontent" placeholder="댓글추가" class="form-control"><br>';
  						str += '<input type="button" value="댓글달기" class="btn-success commentsubmit" style="float:right; background: #288C28 !important;"><br>';

  						
  						if(res == ""){
  							str +="<br><div class='f4' id='nocomment'>등록된 댓글이 없습니다.</div>";
  							
  						}else{
  					
  						$.each(res, function(i,v){
  							str += '<div calss="commentdiv">';
  	  						str += '<p><span class ="cwriter">작성자: '+v.mem_email+'</span> <span style="float: right" class="cdate">작성일 : '+v.com_date+'</span></p>';
  	  						str += '<br><p class="cinput">작성글 : <span  class ="ccomment">'+v.com_content+'</span>';
  	  						<% if(loginMemVo != null){ %>
  	  					 if('<%=loginMemVo.getMem_email()%>' == v.mem_email ) {
  	  						str +=  '<input type ="hidden" class="com_no" value="'+v.com_no+'">';
  	  						str +=  '<input type ="button" class="commentmod" value="수정"  style="margin-left: 10px; line-height: 30px; float: right">';
  	  						str +=  '<input type ="button" class="commentdel" value="삭제"  style=" line-height: 30px; float: right">';
  	  					 }
  	  						<%}%>  	  						
  	  						str += '</p>';
  	  						str += '</div><hr>';
  						})
  					}
  						
  						$(commentplace).html(str);
  					},
  					
  					error: function(xhr){
  						alert(xhr.status);
  					},
  					dataType: 'json'
  				})
  			})
  			$(document).on('click', '.commentdel', function(){
  			result	= confirm("정말로 삭제하시겠습니까? ");
  			if(result == true){
  				comno = $(this).prev().prev().val();
  				 $(this).parent().parent().remove();
 				
  				$.ajax({
  					url: '/cumtrip/commentdel.do',
  					type: 'get',
  					data : {"comno" : comno },
  					success: function(res){
  					
  					}
  				})}
  			})
  			
  			$(document).on('click', '.commentmod', function(){
  				comno = $(this).prev().val();
  				ccomment = $(this).parent().parent().find('.ccomment').text();
  			
  				str = '수정글 : <input type="text" name="reviewcontent" class="reviewcontent" placeholder="댓글추가" class="form-control">';
  				str +=  '<input type ="hidden" class="com_no" value="'+comno+'">';
  				str += ' <input type="button" value="저장"  style="width: 50px; line-height: 30px; float: right" class="rsave">';
  				str += ' <input type="button" value="취소"  style="width: 50px; line-height: 30px; float: right" class="rcancle">';
  				str += '<div class="clear"></div><br>';
  				$(this).parent().parent().find('.cinput').html(str);
  			
  			})
  			$(document).on('click', '.rsave',function(){
  			   ccomment = $(this).parent().find('.reviewcontent').val();
  				cdate	= $(this).parent().parent().find('.cdate');	
  					cinput =	$(this).parent().parent().find('.cinput');
					var today = new Date();

	  				var year = today.getFullYear();
	  				var month = ('0' + (today.getMonth() + 1)).slice(-2);
	  				var day = ('0' + today.getDate()).slice(-2);

	  				var dateString = year + '-' + month  + '-' + day;
	  				
  					$(cdate).text("작성일 : "+dateString);
				   
					
  				$.ajax({
  					url: '/cumtrip/commentmod.do',
  					type: 'get',
  					data : {"comno" : comno,
  							"ccomment": ccomment
  								},
  					success : function(res){
  						str = '작성글 : <span  class ="ccomment">'+ccomment+'</span>';
  						str +=  '<input type ="hidden" class="com_no" value="'+comno+'">';
	  					str +=  '<input type ="button" class="commentmod" value="수정" style="float: right" >';
	  					str +=  '<input type ="button" class="commentdel" value="삭제" style="float: right">';
	  					$(cinput).html(str);
  					}, 
  					error : function(xhr){
  						
  					},
  					dataType: 'json'
  					
  				})
  				
  				
  				
  			})
  			
  			$(document).on('click','.rcancle',function(){
  				
  				str = '작성글 : <span  class ="ccomment">'+ccomment+'</span>';
  				str +=  '<input type ="hidden" class="com_no" value="'+comno+'">';
				str +=  '<input type ="button" class="commentmod" value="수정" style="float: right" >';
				str +=  '<input type ="button" class="commentdel" value="삭제" style="float: right">';
				$(this).parent().parent().find('.cinput').html(str);
  			})
  				
  			
	 		$(document).on('click','#btn1', function(){
	 			mreno = $(this).find('.mreno').val();
				var img1 = document.getElementById('like1');
				img1.src="../images/좋아요2.jpg";
				
				$.ajax({
					url : "/cumtrip/InsertMrlikes.do",
					type : 'get',
					data : {"mreno" : mreno,
							"midno" : midno	
					},
					success : function(res){
					},
					error : function(xhr){
						alert(xhr.status);
					},
					dataType: 'json'
				})
			})
  			
  			
  			$(document).on('click','.commentsubmit',function(){
  				var today = new Date();

  				var year = today.getFullYear();
  				var month = ('0' + (today.getMonth() + 1)).slice(-2);
  				var day = ('0' + today.getDate()).slice(-2);

  				var dateString = year + '-' + month  + '-' + day;
  				
  				content = $(this).prev().prev().val();
  				mreno =  $(this).parents('.accordion-item').find('.mreno').val();
				$('#reviewcontent').val('');
				$(this).parents('.accordion-body').find('#nocomment').remove();
				
  				$.ajax({
  					url: '/cumtrip/insertcomment.do',
  					type : 'post',
  					data : {"content" : content,
  							"mreno" : mreno},
  					success: function(res){
  						str = '<div>';
  						
  						str += '<span>작성자: <% if(loginMemVo !=null){ %><%=loginMemVo.getMem_email() %>	 <% }%><span><p style="text-align: right">작성일 :'+dateString+' </p>';
  						str += '<p>작성글 : '+content+'';
  	  					str +=  '<input type ="button" class="commentmod" value="수정" style="float: right" >';
  	  					str +=  '<input type ="button" class="commentdel" value="삭제" style="float: right">';
  						str +='<p>';
  						str += '</div><hr>';
  						$(commentplace).append(str);
  						
  					},
  					error: function(xhr){
  						
  					},
  					dataType : 'json'
  				})
  				
  				
  			} )
  			
  			

 
  	
	 		$(document).on('click','.like1', function(){
	 			mreno = $(this).prev().val();
				$(this).attr('src', "../images/좋아요2.jpg" );
				
				$.ajax({
					url : "/cumtrip/InsertMrlikes.do",
					type : 'get',
					data : {"mreno" : mreno,
							"midno" : midno
					},
					success : function(res){
					},
					error : function(xhr){
					},
					dataType: 'json'
				})
			})
			
			$(document).on('click', '.hate1', function(){
				$(this).attr('src',"../images/신고2.jpg" );
			})
  			
		
  		var HOME_PATH = window.HOME_PATH || '.';
  		var cityhall = new naver.maps.LatLng(midx, midy),
  		    map = new naver.maps.Map('map', {
  		        center: cityhall,
  		        zoom: 18
  		    }),
  		    marker = new naver.maps.Marker({
  		        map: map,
  		        position: cityhall
  		    });

  
  		var infowindow = new naver.maps.InfoWindow({
  		    maxWidth: 140,
  		    backgroundColor: "#eee",
  		    borderColor: "#2db400",
  		    borderWidth: 5,
  		    anchorSize: new naver.maps.Size(30, 30),
  		    anchorSkew: true,
  		    anchorColor: "#eee",
  		    pixelOffset: new naver.maps.Point(20, -20)
  		});

  		naver.maps.Event.addListener(marker, "click", function(e) {
  		    if (infowindow.getMap()) {
  		        infowindow.close();
  		    } else {
  		        infowindow.open(map, marker);
  		    }
  		});
  		
  		
  		
  		 drawStar = (target) => {
 		    $('.star span').css({ 'width': target.value*15 });
 		    var star = '<p>별점 '+ target.value + '점</p>'; 
 		    $('#starlabel').html(star);
 		  }
  		 
  		 
		$('#inputsubmit').on('click', function(){
			$('#input').submit();
			
		})
		$('#inputsubmit2').on('click',function(){
			$('#inputphoto').submit();
		})
		
		
		
		$('#upinputsubmit').on('click',function(){
			$('#upinput').submit();
		})
		
		$('#deinputsubmit').on('click',function(){
			$('#deinput').submit();
		})
		
		// 수정버튼 클릭 이벤트 
		$(document).on('click', '.modify', function(){
			
			//alert($(this).attr('idx'));
			
			$('#modifyModal .mreno').val($(this).attr('idx'));
			$('#modifyModal').modal('show');
			$('.mreno').attr('value', mreno);
			
		})
					
		
		// 삭제버튼 클릭 이벤트 
		$(document).on('click', '.delete', function(){
			
			//alert($(this).attr('idx'));
			
			$('#deleteModal .mreno').val($(this).attr('idx'));
			$('#deleteModal').modal('show');
			$('.mreno').attr('value', mreno);
		})
		
  		$('.close').on('click',function(){
  			$(this).parents('.modal').modal('hide');
  		})
  		
    document.title = tle;

  		

  	})
  </script>
  

<!-- 로딩중 -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/fakeLoader.css">
<script src="<%= request.getContextPath() %>/view/js/fakeLoader.js"></script>
</head>
<body>

	<header id="header">
		<!-- 상단 헤더 불러오기 -->
		<article style="margin: 5px 18%;">
			<div class="box" style="display: table; width: 100%;">
				<div class="backgroundimg">
					<span class="icon"></span> <input type="search" autocomplete="off"
						spellcheck="false" class="mainsch typeahead tt-query"
						placeholder="어디로 가시나요?">
				</div>
			</div>
		</article>
	</header>

<div id="detailcenter">
	<div class="name_Box">
		<div id="name" class="nameDetailpage"></div>
	</div>
	<div class="card_back_td">
		<div class="card-body Light card " id="intro"
			style="overflow-y: scroll;">
			<h3 class="f1">소개</h3>
			<br>

		</div>

		<div id="demo" class="carousel slide" data-ride="carousel">

			<!-- The slideshow -->
			<div class="carousel-inner" style="width: 500px; height: 500px;">


			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
	<div class="clear"></div>
	<br>
	<br>
	<div id="localintro">
		<h3 class="f1">지역 설명</h3>
		<span class="addr_back_s">
		<p id="addr" class="f4"></p></span>
		<br>
		<h3 class="f1 best_s">베스트 주변</h3>
		<div id="restaurant">
			<h5 class="f4 f4_sub_ts">음식점</h5>
			<br>
		</div>
		<div id="space">
			<h5 class="f4 f4_sub_ts">관광명소</h5>
			<br>
		</div>
		<div id="map"></div>
	</div>
	<div class="clear"></div>
	<hr>
	<br>
	<br>

	<div id="review">
		<h3 class="f1">리뷰 작성</h3>
		<%
		MemberVO loginMemVo2 = (MemberVO) session.getAttribute("loginMember");
		if (loginMemVo2 != null) { // 로그인
		%>
		<input type="button" value="리뷰작성하기" class="btn-outline-secondary"
			style="margin: 5px; line-height: 30px;" data-toggle="modal"
			data-target="#myModal"> <input type="button" value="사진업로드"
			class="btn-outline-secondary" data-toggle="modal"
			data-target="#myModal2" style="line-height: 30px;">
		<%
		} else { // 로그인 아직
		%>
		<input type="button" value="리뷰작성하기" class="btn-outline-secondary"
			style="margin: 5px; line-height: 30px;" data-toggle="modal"
			data-target="#loginModal"> <input type="button"
			value="사진업로드" class="btn-outline-secondary" data-toggle="modal"
			data-target="#loginModal" style="line-height: 30px;">
		<%
		}
		%>

		<br> <br>
		<div>
			<h3 class="f1">리뷰</h3>
			<div id="reviewscore">리뷰 스코어</div>
			<div id="reviewlist"></div>
		</div>
	</div>
	<div class="clear"></div>
</div>

	<footer id="footer"><!-- 하단불러오기 --></footer>
		<!-- Copyright(c)2021 Hong -->


			<div class="modal fade" id="myModal">
			<div class="modal-dialog"><div class="modal-content" style="border-radius: 30px 30px 30px 30px;"><div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
		    <h4 class="modal-title f4" style="color:white; font-size:1.3em">리뷰 작성</h4>                                           
		    <button type="button" class="close" data-dismiss="modal">&times;</button>
		    </div>                                                                                   
		    <div class="modal-body">                                                                  
		  	<form id="input" action='/cumtrip/insertmreview.do' method="post"  enctype="multipart/form-data" >
		    <table>                                                                          
		     <tr>                                                                                    
		     <td style="text-align: left"><label class="f4">리뷰 제목</label>                                                                   
		     <input type="text" name ="title" placeholder="제목을 입력해 주세요." style="width: 300px"></td>
		    </tr>  
		    <tr>
		    <label id='starlabel' class="f4">별점</label><br>
		    	<span class="star">
  				★★★★★
 				 <span id="substar">★★★★★</span>
 				 <input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10" id='star' name="point">
				</span>
		                                                                                    
		     <tr>                                                                                     
		     <td colspan = '2' style="text-align: left" class="f4">리뷰 내용<br>                                                                      
		     <textarea name="content" placeholder="내용을 입력해 주세요." style="width: 100%; height: 200px; boarder: none; resize: none;"></textarea></td>   		                                 
		     </tr>                                                                                  
		     <tr>
		     <td colspan='2' style="text-align: left; font-weight: bold" class="f1"><br><label class="label1" for="input-file">사진첨부</label>
		     <input type="file" id="input-file" name="file" style="display: none"/>    <span class="inputmidno"></span>  </td>                                                                        
		     </tr>                                                                                                                                                                        
		    </table>
		 	</form>   
		    </div>                                                                          
		     <div class="modal-footer">
		    <input type="button" value="입력" id="inputsubmit" class="btn btn-success inputsubmit43" style="background-color: #FF9614; border-color: white; width: 120px;"> 
		    <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #FF9614; border-color: white; border-radius: 10px; width: 120px;">Close</button>  
		     
		   </div></div></div></div>     
		   
		   
		   	<div class="modal fade" id="myModal2">
				<div class="modal-dialog">
					<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
						<div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
		    				<h4 class="modal-title" class="f1" style="color:white; font-size:1.3em">사진 업로드</h4>                                           
		    				<button type="button" class="close" data-dismiss="modal">&times;</button>
		    			</div>                                                                                   
		    			<div class="modal-body">                                                                  
		    				<h4 class="f4">업로드할 사진을 선택하세요.</h4> 
		  					<form id="inputphoto" action='/cumtrip/insertphotorestaurant.do' method="post"  enctype="multipart/form-data" >
		    					<table>                                                                          
		     						<tr>                                                                                    
		     							<td style="text-align: left">
		     								<input type="file" name="file" multiple><span class="inputmidno"></span>
										</td> 
		                                                                     
		     						</tr>                                                                                                                                                                        
		    					</table>
		 		     		</form>   
		    			</div>                                                                          
		     			<div class="modal-footer">
		    				<input type="button" value="업로드" id="inputsubmit2" class="btn btn-success" style="background-color: #FF9614; border-color: white; width: 120px;">
		    				<button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #FF9614; border-color: white; border-radius: 10px; width: 120px;">Close</button>  
		     			</div>
		     		</div>
		     	</div>
		     </div>   



<%-- 			<div class="login_wrap_TopRight">
				<!-- 로그인시작 -->
	
				<a data-toggle="modal" href="#loginModal" id="top_login" class="f4">LOGIN</a>
					<div class="modal fade" id="loginModal" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
								<div class="modal-header"  style="border-radius: 30px 30px 0px 0px;">
									<h1 class="modal-title" align="center" class="f4" style="color:white; font-size:1.3em">로그인</h1>
									<button type="button" class="close" data-dismiss="modal">×</button>
				
								</div>
				     			<div class="modal-body">
					         		<!-- 본문시작 -->
									<form id="login_form" action="<%= request.getContextPath() %>/sessionLogin.do" method="get">
						      			<label for="id" class="f4">ID</label><input type="text" class="form-control" id="id" name="memid" placeholder="id"><br>
						      			<label for="pass" class="f4">PASS</label><input type="text" class="form-control" id="pass" name="mempass" placeholder="pass"><br>
						      			<input type="submit" value="확인" id="login_button"  class="btn btn-dark"><br><br>
						      			<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/findID.jsp" class="f4">아이디 찾기</a>
						      			<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/findPass.jsp" class="f4">비밀번호 찾기</a>
						      			<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/singIn.jsp" class="f4">회원가입</a>
						      		</form>
								</div>
							</div>
						</div>
					</div>
				  
				<!-- 로그인 마침 -->
			  
				<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/singIn.jsp" class="topButton" id="SignUp">회원가입</a>
			</div> --%>
		
		
	
			<div class="modal fade" id="modifyModal">
				<div class="modal-dialog">
					<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
						<div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
		    				<h4 class="modal-title f4" style="color:white; font-size:1.3em">리뷰 수정</h4>                                           
							<button type="button" class="close" data-dismiss="modal" >×</button>
						</div>                                                                                   
						<div class="modal-body">                                                                  
							<form id="upinput" method="post" action="/cumtrip/upatemreview.do" enctype="multipart/form-data" >
								<table>                                                                          
									<tr>                                                                                    
										<td style="text-align: left"><label class="f4">리뷰 제목</label>                                                                   
											<input type="text" name ="title" placeholder="수정할 제목을 입력해 주세요." style="width: 300px">
											<input type="hidden" name="mreno" class="mreno" >
											
											
										</td>
									</tr>  
									<tr>
										<label id='starlabel' class="f4">별점</label><br>
										<span class="star">
											★★★★★
											<span id="substar">★★★★★</span>
											<input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10" id='star' name="point">
										</span>
									</tr>	
									<tr>                                                                                     
										<td colspan = '2' style="text-align: left" class="f4">리뷰 내용<br>                                                                      
											<textarea name="content" placeholder="수정할 내용을 입력해 주세요." style="width: 100%; height: 200px; boarder: none; resize: none;"></textarea>
										</td>   		                                 
									</tr>                                                                                  
									<tr>
										<td colspan='2' style="text-align: left; font-weight: bold" class="f4">사진첨부
											<input type="file" name="file"><span class="inputmidno"></span>
										</td>                                                                        
									</tr>                                                                                                                                                                        
								</table>
							</form>   
						</div>                                                                          
						<div class="modal-footer">
							<input type="button" value="수정완료"  id="upinputsubmit" class="btn btn-success" style="background-color: #FF9614; border-color: white; width: 120px;"> 
							<button type="button" class="close btn btn-danger" data-dismiss="modal" style="background-color: #FF9614; border-color: white; width: 120px; line-height: 36px; border-radius: 10px; opacity: 100;">Close</button> 
						</div>
					</div>
				</div>	
			</div>	
	
			<!-- The Modal -->
			<div class="modal fade" id="deleteModal">
				<div class="modal-dialog">
					<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
						<div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
	        				<h4 class="modal-title f4" style="color:white; font-size:1.3em">리뷰 삭제</h4>
	        				<button type="button" class="close" data-dismiss="modal">×</button>
	        			</div>
	
						<!-- Modal body -->
						<div class="modal-body">
							<form id="deinput" method="post" action="/cumtrip/Deletemreview.do" >
								<input type="hidden" name="mreno" class="mreno" >
								<span class="inputmidno"></span>
								<label class="f4">리뷰를 삭제하시겠습니까?</label>
							</form> 
						</div>
					
	
						<!-- Modal footer -->
						
						<div class="modal-footer">
							<input type="button" value="삭제" id="deinputsubmit" class="btn btn-success"> 
							<button type="button" class="close btn btn-danger" data-dismiss="modal">Close</button> 
						</div>
					</div>
				</div>
			</div>


<!-- 로딩 -->
 <div class="fakeLoader"></div>
 <script src="<%= request.getContextPath() %>/view/js/fakeLoader_speed.js"></script>
 
</body>
</html>