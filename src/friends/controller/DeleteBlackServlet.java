package friends.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import friends.service.FriendsService;
import friends.service.FriendsServiceImpl;

@WebServlet(name = "black/delete", urlPatterns = { "/black/delete.do" })
public class DeleteBlackServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");

		// 클라이언트의 요청정보 추출
		String me_id = req.getParameter("id");

		// 비지니스 메소드 호출
		FriendsService service = new FriendsServiceImpl();
		int result = service.deleteBlack(me_id);

		// 요청재지정
		res.sendRedirect("/single/black/blacklist.do");
	}
}
