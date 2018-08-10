package friends.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import friends.service.FriendsService;
import friends.service.FriendsServiceImpl;
import member.dto.MemberDTO;

@WebServlet(name = "black/search", urlPatterns = { "/black/search.do" })
public class BlackSearchServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		
		// 1. 클라이언트의 요청정보 추출
		String search = request.getParameter("search");

		// 2. 비즈니스 메소드 호출
		FriendsService service = new FriendsServiceImpl();
		ArrayList<MemberDTO> blacklist= service.search(search);

		// 3. 데이터 공유
		request.setAttribute("blacklist", blacklist);
		
		// 4. 요청재지정 - forward
		RequestDispatcher rd = request.getRequestDispatcher("/pages/blacklist/blacklistview.jsp");
		rd.forward(request, response);
		
	}
}
