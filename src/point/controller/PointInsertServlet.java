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

@WebServlet(name = "PointInsert", urlPatterns = { "/PointInsert.do" })
public class PointInsertServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String po_title = request.getParameter("po_title");
		String po_txt = request.getParameter("po_txt");
		String po_img = request.getParameter("po_img");
		int po_pt = Integer.parseInt(request.getParameter("po_pt"));
		int po_state = Integer.parseInt(request.getParameter("po_state"));
		
		PointDTO dto = new PointDTO(po_title, po_txt, po_img,  po_pt, po_state);
		int result = 0;
		PointService service = new PointServiceImpl();
		result = service.po_insert(dto);
		
		System.out.println("result값"+result);
		String msg = "";
		if(result > 0){
			msg= "입력성공";
		}else{
			msg= "입력실패";
		}
		System.out.println(msg);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/pages/point/pointmarketview.jsp");
		rd.forward(request, response);
		
	
	}

}
