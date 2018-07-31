package free.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.dto.FreeDTO;
import free.service.FreeService;
import free.service.FreeServiceImpl;

@WebServlet(name = "fr/insert", urlPatterns = { "/fr/insert.do" })
public class PostInsertServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("서블릿 요청 성공");
		req.setCharacterEncoding("euc-kr");

		// 1. 클라이언트의 요청정보 추출
		String title = req.getParameter("title");
		String txt = req.getParameter("txt");
		String ctg = req.getParameter("ctg");

		// String fr_img = req.getParameter("attch");
		// String me_id = req.getParameter("id");

		// 2. 비지니스 메소드 호출
		FreeDTO post = new FreeDTO(title, txt, ctg);

		System.out.println("게시글 등록 서블릿: " + post);
		FreeService service = new FreeServiceImpl();
		int result = service.insert(post);

		// 요청재지정
		res.sendRedirect("/single/fr/list.do");
	}
}
