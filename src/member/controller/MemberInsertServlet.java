package member.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.dto.MemberDTO;
import member.service.MemberService;
import member.service.MemberServiceImpl;
@WebServlet(name = "memberinsert", urlPatterns = { "/memberinsert.do" })
public class MemberInsertServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String me_id = request.getParameter("me_id");
		String me_pwd = request.getParameter("me_pwd");
		String me_name = request.getParameter("me_name");
		//Date积斥岿老贸府
		String birth = request.getParameter("me_birth");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		long me_birth=0;
		try {
			me_birth = sdf.parse(birth).getTime();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String me_gender = request.getParameter("me_gender");
		String me_phone = request.getParameter("me_phone");
		String me_telnum = request.getParameter("me_telnum");
		String me_telchk = request.getParameter("me_telchk");
		String me_email = request.getParameter("me_email");
		String me_addr = request.getParameter("me_addr");
		//己氢贸府
		String[] characterList = request.getParameterValues("me_character");
		String me_character = "";
		if(characterList!=null){
			for(int i = 0 ; i < characterList.length ; i++){
				me_character = me_character + characterList[i];
				if(i<characterList.length-1){
					me_character = me_character +",";
				}
			}
		}
		/*String me_img = request.getParameter("me_img");*/
		String me_img = "basicUser.png";
		String me_loc = "困摹";
		
		MemberService service = new MemberServiceImpl();
		MemberDTO user = new MemberDTO(me_id, me_pwd, me_name, new Date(me_birth), me_gender, me_phone, me_telnum, me_telchk, me_email, me_addr, me_character, me_img, me_loc);
		int result = service.memberinsert(user);
		
		response.sendRedirect("/single/pages/mainview.jsp");
	}
}
