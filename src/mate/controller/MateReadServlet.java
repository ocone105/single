package mate.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mate.dto.MateDTO;
import mate.service.MateService;
import mate.service.MateServiceImpl;

@WebServlet(name = "mt/read.do", urlPatterns = { "/mt/read.do" })
public class MateReadServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");	
		
		int mt_no = Integer.parseInt(request.getParameter("mt_no"));
		int result = 0;
		MateDTO dto = null;
		MateService service = new MateServiceImpl();
		result = service.update_hits(mt_no);
		dto = service.read_mt(mt_no);
		System.out.println(dto);
		request.setAttribute("dto", dto);

		RequestDispatcher rd = request.getRequestDispatcher("/pages/mate/mate_readview.jsp");
		rd.forward(request, response);
		
	}

}
