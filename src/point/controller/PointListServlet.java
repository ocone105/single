package point.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import point.dao.PointDAO;
import point.dao.PointDAOImpl;
import point.dto.PointDTO;
import point.service.PointService;
import point.service.PointServiceImpl;

@WebServlet(name = "PointList", urlPatterns = { "/PointList.do" })
public class PointListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		request.setCharacterEncoding("euc-kr");
		
		ArrayList<PointDTO> dtolist = null;
		
		PointService service = new PointServiceImpl();
		dtolist = service.po_list();
		
		System.out.println("포인트마켓리스트");
		request.setAttribute("dtolist", dtolist);
		
		RequestDispatcher rd = request.getRequestDispatcher("/pages/point/pointmarketview.jsp");
		rd.forward(request, response);
	}


}
