package mate.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mate.dto.MateCmtDTO;
import mate.service.MateService;
import mate.service.MateServiceImpl;
 
@WebServlet(name = "mt/re_read", urlPatterns = { "/mt/re_read.do" })
public class MateReplyReadServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");	
		int mt_no = Integer.parseInt(request.getParameter("mt_no"));
		ArrayList<MateCmtDTO> dtolist = null;
		MateService service = new MateServiceImpl();
		dtolist = service.List_mt_cmt(mt_no);
		
		
		request.setAttribute("dtolist", dtolist);
		RequestDispatcher rd = request.getRequestDispatcher("/pages/mate/mate_readview.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
