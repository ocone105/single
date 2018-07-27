package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "mt_insert", urlPatterns = { "/mt_insert.do" })
public class MateInsertServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String me_id = "";
		String mt_title = request.getParameter("mt_title");
		String mt_ctg = request.getParameter("mt_ctg");
		String mt_map = request.getParameter("mt_map");
		String mt_cnt = request.getParameter("mt_cnt");
		String mt_txt = request.getParameter("mt_txt");
		String mt_img = request.getParameter("mt_img");
		
		
		
		
		
		
	}

}
