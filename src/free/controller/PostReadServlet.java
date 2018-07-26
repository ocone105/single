package free.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

import free.dto.FreeDTO;
import free.service.FreeService;
import free.service.FreeServiceImpl;
@WebServlet(name = "fr/read", urlPatterns = { "/fr/read.do" })
public class PostReadServlet extends HttpServlet{
	public void doGet(HttpServletRequest req,
					HttpServletResponse res)
						throws ServletException,IOException{
		System.out.println("서블릿 요청 성공");
		req.setCharacterEncoding("euc-kr");
		
		// 1. 클라이언트의 요청정보 추출
		int no = Integer.parseInt(req.getParameter("no"));
		
		//2. 비지니스 메소드 호출
		FreeService service = new FreeServiceImpl();
		FreeDTO post = service.read(no);
	
		//3. 데이터공유
		req.setAttribute("post", post);

		//4. 요청재지정
		RequestDispatcher rd = req.getRequestDispatcher("/single/pages/free/freeview_view.jsp");
		rd.forward(req, res);
	}
}













