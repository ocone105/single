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
 
@WebServlet(name = "insert_bd", urlPatterns = { "/bd/insert_bd.do" })
public class InsertBdServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");

		// Ŭ���̾�Ʈ�� ��û���� ����
		String me_id = req.getParameter("id");
		String bd_id = req.getParameter("bd_id");
		int no = Integer.parseInt(req.getParameter("postno"));

		// �����Ͻ� �޼ҵ� ȣ��
		BdDTO bd = new BdDTO(me_id, bd_id);
		FriendsService service = new FriendsServiceImpl();
		int result = service.insertBd(bd);
		
		// ��û������
		res.sendRedirect("/single/fr/read.do?no="+no+"&action=read");
	}
}
