package point.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import point.dto.PointDTO;
import point.service.PointService;
import point.service.PointServiceImpl;

@WebServlet(name = "po/read", urlPatterns = { "/po/read.do" })
public class PointReadServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		int po_no = Integer.parseInt(request.getParameter("po_no"));
		System.out.println("±Û¹øÈ£"+po_no);
		PointDTO dto = null;
		PointService service = new PointServiceImpl();
		dto = service.po_read(po_no);
		System.out.println(dto);
		request.setAttribute("dto", dto);
		
		RequestDispatcher rd = request.getRequestDispatcher("/pages/point/pointmarketreadview.jsp");
		rd.forward(request, response);
	
	}


}
