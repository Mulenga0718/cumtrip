package cumtrip.detail.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import cumtrip.admin.service.MainService;
import cumtrip.admin.service.MemberService;
import cumtrip.detail.service.DetailService;
import cumtrip.vo.CartVO;
import cumtrip.vo.M_commentVO;
import cumtrip.vo.MemberVO;

/**
 * Servlet implementation class Insertcart
 */
@WebServlet("/insertcart.do")
public class Insertcart extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		CartVO cvo = new CartVO();
		DetailService service = DetailService.getInstance();
		MemberService service2 = MemberService.getInstance();
		PrintWriter out = response.getWriter();
		
		//결제 정보 입력
		String totalprice = request.getParameter("totalprice");
		String checkindata = request.getParameter("checkindata");
		String checkoutdata = request.getParameter("checkoutdata");
		int personnum = Integer.parseInt( request.getParameter("personnum"));
		String stayno = request.getParameter("stayno");
		String roomnum = request.getParameter("roomnum");
		String id = request.getParameter("id");
		
		
		cvo.setMem_email(id);
		cvo.setCart_in(checkindata);
		cvo.setCart_out(checkoutdata);
		cvo.setCart_number(personnum);
		cvo.setStay_no(stayno);
		cvo.setRoom_no(roomnum);
		
		int result = service.insertcart(cvo);
		
		
		
		HttpSession session = request.getSession();
		MemberVO mvo = service2.selectMemberone(id);
		mvo.setMem_email(id);
		session.setAttribute("loginMember", mvo);
		
		
		Map<String, String> map = new HashMap<String,String>();
		map.put("pay_price", totalprice);
		map.put("room_no", roomnum);
		map.put("stay_no", stayno);
		map.put("cart_in", checkindata);
		map.put("cart_out", checkoutdata);

		
		int result2 = service.insertpay(map);

		response.sendRedirect(request.getContextPath()+"/view/jsp/detailpagestay.jsp?stayno="+stayno+"");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
