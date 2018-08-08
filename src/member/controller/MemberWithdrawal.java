package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.dto.MemberDTO;
import member.service.MemberService;
import member.service.MemberServiceImpl;

@WebServlet(name = "memberwithdrawal", urlPatterns = { "/memberwithdrawal.do" })
public class MemberWithdrawal extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		HttpSession ses = request.getSession();
		MemberDTO loginUser = (MemberDTO) ses.getAttribute("loginUser");
		System.out.println(loginUser.getMe_id());
		
		MemberService service = new MemberServiceImpl();
		int result = service.memberwithdrawal(loginUser.getMe_id());
		
		String url="";
		if(result>=1){ //Å»Åð¿Ï·á
			url = "/single/logout.do";
		}else{
			url = "/single/pages/member/withdrawal.jsp";
		}
		
		response.sendRedirect(url);
		
	}
}
