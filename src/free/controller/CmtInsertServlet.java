package free.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.dto.FreeCmtDTO;
import free.service.FreeCmtService;
import free.service.FreeCmtServiceImpl;

@WebServlet(name = "fr/cmtinsert", urlPatterns = { "/fr/cmtinsert.do" })
public class CmtInsertServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("서블릿 요청 성공");
		req.setCharacterEncoding("euc-kr");

		// 클라이언트의 요청정보 추출
		String cmt_txt = req.getParameter("cmt");
		int no = Integer.parseInt(req.getParameter("no"));
		// String me_id = req.getParameter("id");

		// 비지니스 메소드 호출
		FreeCmtDTO cmt = new FreeCmtDTO(cmt_txt, no);
		System.out.println("댓글 등록 서블릿: " + cmt);
		FreeCmtService service = new FreeCmtServiceImpl();
		int result = service.insert(cmt);

		// 요청재지정
		res.sendRedirect("/pages/free/freeview_read.jsp");
	}
}
