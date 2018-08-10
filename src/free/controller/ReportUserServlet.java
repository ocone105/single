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
public class ReportUserServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");

		// 1. 요청정보 추출
		String report_id = req.getParameter("report_id");
		String me_id = req.getParameter("me_id");
		int no = Integer.parseInt(req.getParameter("no"));

		// 2. 비지니스 메소드 호출
		FreeService service = new FreeServiceImpl();
		int result = service.report(report_id, me_id);
		
		// 3. 요청재지정
		if(result>=1){
		res.sendRedirect("/single/fr/read.do?no="+no+"&action=read");
		}else{
		res.sendRedirect("/single/fr/read.do?no="+no+"&action=read");
		}
	}
}
