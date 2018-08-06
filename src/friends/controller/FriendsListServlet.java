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

@WebServlet(name = "friendslist", urlPatterns = { "/friends/list.do" })
public class FriendsListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("Servlet요청성공");

		String me_id = "ocean";
		
		FriendsService service = new FriendsServiceImpl();
		ArrayList<String> friends = service.friendsList(me_id);

		request.setAttribute("friends", friends);
		
		// 4. 요청재지정
		// RequestDispatcher rd = request.getRequestDispatcher("/pages/vs/vsview.jsp");
		// rd.forward(request, response);
	}
	
	public static void main(String[] args){
		String me_id = "ocean";
		
		FriendsService service = new FriendsServiceImpl();
		ArrayList<String> friends = service.friendsList(me_id);
		System.out.println("아이디 ㅣ "+me_id);

		System.out.println(friends);
	}
}
