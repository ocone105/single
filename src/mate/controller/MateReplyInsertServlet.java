package mate.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mate.dto.MateCmtDTO;
import mate.dto.MateDTO;
import mate.service.MateService;
import mate.service.MateServiceImpl;

@WebServlet(name = "mt/re_insert", urlPatterns = { "/mt/re_insert.do" })
public class MateReplyInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		String mt_cmt_txt = request.getParameter("mt_cmt_txt");
		int mt_no  = Integer.parseInt(request.getParameter("mt_no"));
		String me_id  = request.getParameter("me_id");
		
		MateCmtDTO dto = new MateCmtDTO(mt_cmt_txt, mt_no, me_id);
		
		MateService service = new MateServiceImpl();
		
		int result = 0;
		
		result = service.insert_mt_cmt(dto);
		if(result>0){
			
			System.out.println("입력성공");
		}else{
			System.out.println("입력실패");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/single/mt/read.do?mt_no="+mt_no);
		rd.forward(request, response);
//		response.sendRedirect("/single/mt_read.do?mt_no="+mt_no);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
