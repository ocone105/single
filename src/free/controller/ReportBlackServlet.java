package free.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.service.FreeService;
import free.service.FreeServiceImpl;
@WebServlet(name = "fr/report", urlPatterns = { "/fr/report.do" })
public class ReportBlackServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");

		// 1. ��û���� ����
		String id = req.getParameter("id");

		// 2. �����Ͻ� �޼ҵ� ȣ��
		FreeService service = new FreeServiceImpl();
		//int result = service.

		// ��û������
	//	res.sendRedirect("/single/fr/list.do?category=all");
	}
}
