package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mate.dto.MateCmtDTO;
import mate.dto.MateDTO;
import mate.service.MateService;
import mate.service.MateServiceImpl;

@WebServlet(name = "mt_reinsert", urlPatterns = { "/mt_reinsert.do" })
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
			
		}else{
			
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
