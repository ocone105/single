package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.dto.MemberDTO;
import member.service.MemberService;
import member.service.MemberServiceImpl;

@WebServlet(name = "memberinfo", urlPatterns = { "/memberinfo.do" })
public class MemberInfoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String id = "";
		String action = request.getParameter("action");
		HttpSession ses = request.getSession(false);
		if(ses!=null){
			MemberDTO loginUser = (MemberDTO) ses.getAttribute("loginUser");
			id = loginUser.getMe_id();
		}
		MemberService service = new MemberServiceImpl();
		MemberDTO user = service.getUserInfo(id);
		
		String url = "";
		if(action!=null){
			if(action.equals("READ")){
				url = "/pages/member/memberinfo.jsp";
			}else if(action.equals("UPDATE")){
				url = "/pages/member/infoupdate.jsp";
			}
		}else{
			url = "/pages/member/memberinfo.jsp";
		}
		
		
		request.setAttribute("user", user);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
}
