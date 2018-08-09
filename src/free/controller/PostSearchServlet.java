package free.controller;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
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

@WebServlet(name = "fr/search", urlPatterns = { "/fr/search.do" })
public class PostSearchServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		
		// 1. Ŭ���̾�Ʈ�� ��û���� ����
		String column = request.getParameter("column");
		String search = request.getParameter("search");

		System.out.println("�˻���: "+search);

		// 2. ����Ͻ� �޼ҵ� ȣ��
		FreeService service = new FreeServiceImpl();
		ArrayList<FreeDTO> postlist= service.search(column, search);

		// 3. ������ ����
		request.setAttribute("postlist", postlist);
		
		// 4. ��û������ - forward
		RequestDispatcher rd = request.getRequestDispatcher("/pages/free/freeview.jsp");
		rd.forward(request, response);
		
	}

}
