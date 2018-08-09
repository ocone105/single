package vs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vs.dto.VsDTO;
import vs.service.VsService;
import vs.service.VsServiceImpl;

@WebServlet(name = "vs_read", urlPatterns = { "/vs/vs_read.do" })
public class VsReadServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("Servlet��û����");

		// 2. �����Ͻ� �޼ҵ� ȣ��
		VsService service = new VsServiceImpl();
		ArrayList<VsDTO> posts = service.read();

		// 3. �����Ͱ���
		request.setAttribute("posts", posts);
		
		
		// 4. ��û������
		RequestDispatcher rd = request.getRequestDispatcher("/pages/vs/vsview.jsp");
		rd.forward(request, response);
	}
}