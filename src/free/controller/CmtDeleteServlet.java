package free.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.service.FreeCmtService;
import free.service.FreeCmtServiceImpl;

@WebServlet(name = "fr/cmtdelete", urlPatterns = { "/fr/cmtdelete.do" })
public class CmtDeleteServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");

		// 1. ��û���� ����
		int cmt_no = Integer.parseInt(req.getParameter("cmt_no"));
		int no = Integer.parseInt(req.getParameter("no"));

		// 2. �����Ͻ� �޼ҵ� ȣ��
		FreeCmtService service = new FreeCmtServiceImpl();
		int result = service.delete(cmt_no);

		// ��û������
		res.sendRedirect("/single/fr/read.do?no=" + no + "&action=read");
	}
}
