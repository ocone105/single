package free.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.service.FreeService;
import free.service.FreeServiceImpl;
@WebServlet(name = "fr/delete", urlPatterns = { "/fr/delete.do" })
public class PostDeleteServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("서블릿 요청 성공");
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		System.out.println("서블릿요청성공");

		// 1. 요청정보 추출
		int no = Integer.parseInt(req.getParameter("no"));

		// 2. 비지니스 메소드 호출
		FreeService service = new FreeServiceImpl();
		int result = service.delete(no);

		// 3. 응답화면생성
		String msg = "";
		if (result < 0) {
			msg = "삭제실패";
		} else {
			msg = result + "개 행 삭제 성공!!";
		}

		// 요청재지정
		res.sendRedirect("/single/fr/list.do?action=all");
	}
}
