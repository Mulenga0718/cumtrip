package cumtrip.detail.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import cumtrip.detail.service.DetailService;
import cumtrip.vo.M_reviewVO2;
import cumtrip.vo.RoomVO2;

/**
 * Servlet implementation class Selectallroom
 */
@WebServlet("/selectallroom.do")
public class Selectallroom extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		String stayno = request.getParameter("stayno");
		
		DetailService service = DetailService.getInstance();
		List<RoomVO2> list = null;
		list = service.selectallroom(stayno);
	
		Gson gson = new Gson();
		
		String jsonData = gson.toJson(list);
		out.write(jsonData);
		response.flushBuffer();
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
