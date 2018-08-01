package vs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vs.dto.VsDTO;
import vs.service.VsService;
import vs.service.VsServiceImpl;

@WebServlet(name = "select", urlPatterns = { "/vs/select.do" })
public class SelectServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("Servlet요청성공");
		
		String A = request.getParameter("A");
		String B = request.getParameter("B");
		int vs_no = 0;
		System.out.println("A"+A);
		System.out.println("B"+B);

		if(A!=null){
			vs_no = Integer.parseInt(A);
		} else if(B!=null){ 
			vs_no = Integer.parseInt(B);
		} else{
			System.out.println("vs_no 없음");
		}
		System.out.println(vs_no);

		String option = "A";
		// 2. 비지니스 메소드 호출
		VsService service = new VsServiceImpl();
		// int result = service.update(vs_no, option);

		// 3. 데이터공유

		// 4. 요청재지정
		response.sendRedirect("/single/vs/vs_read.do");
	}
}