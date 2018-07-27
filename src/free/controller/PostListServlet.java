package free.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.dto.FreeDTO;
import free.service.FreeService;
import free.service.FreeServiceImpl;

@WebServlet(name = "fr/list", urlPatterns = { "/fr/list.do" })
public class PostListServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		System.out.println("postlist 서블릿 요청 성공");
		req.setCharacterEncoding("euc-kr");

		// 1.비지니스 메소드 호출
		FreeService service = new FreeServiceImpl();
		ArrayList<FreeDTO> postlist = service.getPostList();

		//System.out.println("목록 서블릿" + postlist);

		// 2.데이터공유
		req.setAttribute("postlist", postlist);

		// 3.요청재지정
		RequestDispatcher rd = req.getRequestDispatcher("/single/pages/free/freeview.jsp");	// 경로변경필요
		rd.forward(req, res);
	}
}
