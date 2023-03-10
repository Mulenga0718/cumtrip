<%@page import="cumtrip.vo.MemberVO"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.inicis.std.util.SignatureUtil"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String totalprice =  request.getParameter("totalprice");
	String roomname =  request.getParameter("roomname");
	String checkindata =  request.getParameter("checkindata");
	String checkoutdata =  request.getParameter("checkoutdata");
	int personnum =  Integer.parseInt(request.getParameter("personnum"));
	String stayno =  request.getParameter("stayno");
	String roomnum = request.getParameter("romnum");
    MemberVO vo = (MemberVO)session.getAttribute("loginMember");
	String email = vo.getMem_email();
	String name = vo.getMem_name();
	/*
		//*** 위변조 방지체크를 signature 생성 ***

			oid, price, timestamp 3개의 키와 값을

			key=value 형식으로 하여 '&'로 연결한 하여 SHA-256 Hash로 생성 된값

			ex) oid=INIpayTest_1432813606995&price=819000&timestamp=2012-02-01 09:19:04.004
				

			 * key기준 알파벳 정렬

			 * timestamp는 반드시 signature생성에 사용한 timestamp 값을 timestamp input에 그대로 사용하여야함
	*/

	//############################################
	// 1.전문 필드 값 설정(***가맹점 개발수정***)
	//############################################

	// 여기에 설정된 값은 Form 필드에 동일한 값으로 설정
	String mid					= "INIpayTest";		// 가맹점 ID(가맹점 수정후 고정)					
		request.setCharacterEncoding("utf-8");
	//인증
	String signKey			    = "SU5JTElURV9UUklQTEVERVNfS0VZU1RS";	// 가맹점에 제공된 웹 표준 사인키(가맹점 수정후 고정)
	String timestamp			= SignatureUtil.getTimestamp();			// util에 의해서 자동생성

	String oid					= mid+"_"+SignatureUtil.getTimestamp();	// 가맹점 주문번호(가맹점에서 직접 설정)
	String price				= totalprice;													// 상품가격(특수기호 제외, 가맹점에서 직접 설정)

	String cardNoInterestQuota	= "11-2:3:,34-5:12,14-6:12:24,12-12:36,06-9:12,01-3:4";		// 카드 무이자 여부 설정(가맹점에서 직접 설정)
	String cardQuotaBase		= "2:3:4:5:6:11:12:24:36";		// 가맹점에서 사용할 할부 개월수 설정

	String mKey = SignatureUtil.hash(signKey, "SHA-256");
	
	Map<String, String> signParam = new HashMap<String, String>();

	signParam.put("oid", oid); 					// 필수
	signParam.put("price", price);				// 필수
	signParam.put("timestamp", timestamp);		// 필수
	String signature = SignatureUtil.makeSignature(signParam);
	
	
	/* 기타 */
	String siteDomain = "http://localhost/cumtrip/view/jsp/detailpagestay.jsp?stayno="+stayno+""; //가맹점 도메인 입력

	
%>
	
<!DOCTYPE html>
<html>
<head>
 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/main.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/font.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="../css/gallery.css" media="screen" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="<%= request.getContextPath() %>/view/js/main.js"></script> 
<script src="<%= request.getContextPath() %>/view/admin/js/typeahead.bundle.js"></script>
      <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uhaf2smrg5"></script>
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
    <script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
    <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
  <script language="javascript" type="text/javascript" src="https://stgstdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
  
  
  
  
	<style type="text/css">
	
		
		#payinfo{
			margin-left: 15%;
			margin-right: 15%;
		}
		#payinfotable{
			width: 800px;
			height : 800px;
			
		}
	</style>

	<!-- 이니시스 표준결제 js -->
  <!--
    연동시 유의 사항!!
    1) 테스트 URL(stgstdpay.inicis.com) - 샘플에 제공된 테스트 MID 전용으로 실제 가맹점 MID 사용 시 에러가 발생 할 수 있습니다.
    2) 상용 URL(stdpay.inicis.com) - 실제 가맹점 MID 로 테스트 및 오픈 시 해당 URL 변경하여 사용합니다.
    3) 가맹점의 URL이 http: 인경우 js URL도 https://stgstdpay.inicis.com/stdjs/INIStdPay.js 로 변경합니다.	
    4) 가맹점에서 사용하는 케릭터셋이 EUC-KR 일 경우 charset="UTF-8"로 UTF-8 일 경우 charset="UTF-8"로 설정합니다.
  -->	
  
  <!-- 상용 JS(가맹점 MID 변경 시 주석 해제, 테스트용 JS 주석 처리 필수!) -->
	<!--script language="javascript" type="text/javascript" src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script-->
  
  <!-- 테스트 JS(샘플에 제공된 테스트 MID 전용) -->
	<script language="javascript" type="text/javascript" src="https://stgstdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
	<script type="text/javascript">
	$(function(){
		INIStdPay.pay('SendPayForm_id');
	})
	
	</script>
</head>
<body>

							
							<!-- 결제요청 -->
					
							<table>
								<tr>
									<td style="text-align:left;">
										<form id="SendPayForm_id" name="" method="POST" hidden>
										
											<br/><b class="f1">***** 필 수 *****</b>
											<div style="border:2px #dddddd double;padding:10px;background-color:#f3f3f3;">

												<br/><b class="f4">version</b> :
												<br/><input  style="width:100%;" name="version" value="1.0" >

												<br/><b class="f4">mid</b> :
												<br/><input  style="width:100%;" name="mid" value="<%=mid%>" >
													
												<br/><b class="f4">goodname</b> :
												<br/><input  style="width:100%;" name="goodname" value="<%=roomname%>"> 

												<br/><b class="f4">oid</b> :
												<br/><input  style="width:100%;" name="oid" value="<%=oid%>" >

												<br/><b class="f4">price</b> :
												<br/><input  style="width:100%;" name="price" value="<%=price%>" >

												<br/><b class="f4">currency</b> :
												<br/>[WON|USD]
												<br/><input  style="width:100%;" name="currency" value="WON" >

												<br/><b class="f4">buyername</b> :
												<br/><input  style="width:100%;" name="buyername" value="<%=name %>" >

												<br/><b class="f4">buyertel</b> :
												<br/><input  style="width:100%;" name="buyertel" value="<%=vo.getMem_tel() %>" >

												<br/><b class="f4">buyeremail</b> :
												<br/><input  style="width:100%;" name="buyeremail" value="<%=email %>" >

											
												<!-- <br/><b>timestamp</b> : -->
												<input type="hidden" style="width:100%;" name="timestamp" value="<%=timestamp %>" >

												<!-- <br/><b>signature</b> : -->
												<input type="hidden" style="width:100%;" name="signature" value="<%=signature%>" >

												<br/><b class="f4">returnUrl</b> :
												<br/><input  style="width:100%;" name="returnUrl" value="http://localhost/cumtrip/insertcart.do?checkindata=<%=checkindata%>&checkoutdata=<%=checkoutdata%>&personnum=<%=personnum %>&stayno=<%=stayno %>&roomnum=<%=roomnum %>&id=<%=email %>&totalprice=<%=price %>" >
												<!--""
					                            payViewType이 popup일 경우 crossDomain이슈로 우회처리 
					                            <input  style="width:100%;" name="returnUrl" value="<%=siteDomain%>/INIStdPayRelay.jsp" >
												-->
												<input type="hidden"  name="mKey" value="<%=mKey%>" >

											</div>

											<br/><br/>
											<b class="f1">***** 기본 옵션 *****</b>
											<div style="border:2px #dddddd double;padding:10px;background-color:#f3f3f3;">
												<b class="f4">gopaymethod</b> : 결제 수단 선택
												<br/>ex) Card (계약 결제 수단이 존재하지 않을 경우 에러로 리턴)
												<br/>사용 가능한 입력 값
												<br/>Card,DirectBank,HPP,Vbank,kpay,Swallet,Paypin,EasyPay,PhoneBill,GiftCard,EWallet
												<br/>onlypoint,onlyocb,onyocbplus,onlygspt,onlygsptplus,onlyupnt,onlyupntplus
												<br/><input  style="width:100%;" name="gopaymethod" value="" >
												<br/><br/>

												<br/>
												<b class="f4">offerPeriod</b> : 제공기간
												<br/>ex)20151001-20151231, [Y2:년단위결제, M2:월단위결제, yyyyMMdd-yyyyMMdd : 시작일-종료일]
												<br/><input  style="width:100%;" name="offerPeriod" value="20151001-20151231" >
												<br/><br/>
												
												<br/><b class="f4">acceptmethod</b> : acceptmethod
												<br/>acceptmethod  ex) CARDPOINT:SLIMQUOTA(코드-개월:개월):no_receipt:va_receipt:vbank(20150425):va_ckprice: 
												<br/>KWPY_TYPE(0):KWPY_VAT(10|0) 기타 옵션 정보 및 설명은 연동정의보 참조 구분자 ":"
												<br/><input style="width:100%;" name="acceptmethod" value="CARDPOINT:HPP(1):no_receipt:va_receipt:below1000" >
											</div>

											<br/><br/>
											<b class="f1">***** 표시 옵션 *****</b>
											<div style="border:2px #dddddd double;padding:10px;background-color:#f3f3f3;">
												<br/><b class="f4">languageView</b> : 초기 표시 언어
												<br/>[ko|en] (default:ko)
												<br/><input style="width:100%;" name="languageView" value="" >

												<br/><b class="f4">charset</b> : 리턴 인코딩
												<br/>[UTF-8|EUC-KR] (default:UTF-8)
												<br/><input style="width:100%;" name="charset" value="" >

												<br/><b class="f4">payViewType</b> : 결제창 표시방법
												<br/>[overlay] (default:overlay)
												<br/><input style="width:100%;" name="payViewType" value="" >

												<br/><b class="f4">closeUrl</b> : payViewType='overlay','popup'시 취소버튼 클릭시 창닥기 처리 URL(가맹점에 맞게 설정)
												<br/>close.jsp 샘플사용(생략가능, 미설정시 사용자에 의해 취소 버튼 클릭시 인증결과 페이지로 취소 결과를 보냅니다.)
												<br/><input style="width:100%;" name="closeUrl" value="<%=siteDomain%>" >

												<br/><b class="f4">popupUrl</b> : payViewType='popup'시 팝업을 띄울수 있도록 처리해주는 URL(가맹점에 맞게 설정)
												<br/>popup.jsp 샘플사용(생략가능,payViewType='popup'으로 사용시에는 반드시 설정)
												<br/><input style="width:100%;" name="popupUrl" value="http://localhost/cumtrip/insertcart.do?checkindata=<%=checkindata%>&checkoutdata=<%=checkoutdata%>&personnum=<%=personnum %>&stayno=<%=stayno %>&roomnum=<%=roomnum%>" >
											
											</div>
											
											<b class="f1">***** 결제 수단별 옵션 *****</b>
											<br/>
											<b class="f4">-- 카드(간편결제도 사용) --</b>
											<div style="border:2px #cccccc solid;padding:10px;background-color:#f3f3f3;">

												<br/><b class="f4">quotabase</b> : 할부 개월 설정
												<br/>ex) 2:3:4
												<br/><input  style="width:100%;" name="quotabase" value="<%=cardQuotaBase%>" >
												
												<br/><b class="f4">ini_onlycardcode</b> : 중복 카드 코드
												<br/>ex) 01:03:04:11
												<br/><input  style="width:100%;" name="ini_onlycardcode" value="" >
												
												<br/><b class="f4">ini_cardcode</b> : 카드 코드
												<br/>ex) 14
												<br/><input  style="width:100%;" name="ini_cardcode" value="" >
												
												<br/><b class="f4">ansim_quota</b> : 할부 선택
												<br/>ex) 3
												<br/><input  style="width:100%;" name="ansim_quota" value="" >	
											
											</div>
											
											<b class="f1">-- 가상계좌 --</b>
											<div style="border:2px #cccccc solid;padding:10px;background-color:#f3f3f3;">
												<br/><b class="f4">INIregno</b> : 주민번호 설정 기능
												<br/>13자리(주민번호),10자리(사업자번호),미입력시(화면에서입력가능)
												<br/><input  style="width:100%;" name="INIregno" value="" >
											</div>
											
											<br/><br/>
											<b class="f1">***** 추가 옵션 *****</b>
											<div style="border:2px #dddddd double;padding:10px;background-color:#f3f3f3;">
												<br/><b class="f4">merchantData</b> : 가맹점 관리데이터(2000byte)
												<br/>인증결과 리턴시 함께 전달됨(한글 지원 안됨, 개인정보 암호화(권장))
												<br/><input  style="width:100%;" name="merchantData" value="" >
											</div>
																						
										</form>
									</td>
								</tr>
							</table>
		
</body>
<script type="text/javascript">

</script>
</html>