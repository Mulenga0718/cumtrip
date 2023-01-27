package cumtrip.main.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import cumtrip.main.service.IMemberService;
import cumtrip.main.service.MemberServicelmpl;
import cumtrip.vo.SubPrintVO;

/**
 * Servlet implementation class MainTourListUpload2
 */
@WebServlet("/MainTourListUpload2.do")
public class MainTourListUpload2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MainTourListUpload2() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		IMemberService service = MemberServicelmpl.getInstance();
		PrintWriter out = response.getWriter();
		
		List<SubPrintVO> list = (List<SubPrintVO>)service.maintourlist2();

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