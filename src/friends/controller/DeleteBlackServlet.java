package friends.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import friends.dto.BdDTO;
import friends.service.FriendsService;
import friends.service.FriendsServiceImpl;
 
@WebServlet(name = "delete_black", urlPatterns = { "/delete_black.do" })
public class DeleteBlackServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");

		// Ŭ���̾�Ʈ�� ��û���� ����
		String me_id = req.getParameter("id");

		// �����Ͻ� �޼ҵ� ȣ��
		//BdDTO bd = new BdDTO(me_id, bd_id);
		//FriendsService service = new FriendsServiceImpl();
		//int result = service.deleteBd(bd);
		
		// ��û������
		//res.sendRedirect("/single/fr/read.do?no="+no+"&action=read");
	}
}
