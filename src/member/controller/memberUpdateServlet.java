package member.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import member.dto.MemberDTO;
import member.service.MemberService;
import member.service.MemberServiceImpl;

@WebServlet(name = "memberupdate", urlPatterns = { "/memberupdate.do" })
public class memberUpdateServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		// 파일업로드
		String savaFolder = "/upload";
		String encType = "euc-kr";
		int size = 5 * 1024 * 1024;
		String realpath = "";

		ServletContext context = getServletContext();
		realpath = context.getRealPath(savaFolder);
		MultipartRequest multipart = new MultipartRequest(request, realpath, size, encType,
				new DefaultFileRenamePolicy());
		
		String me_id = multipart.getParameter("id");
		String me_pwd = multipart.getParameter("pass");
		String me_phone = multipart.getParameter("phone"); 
		String me_telnum = multipart.getParameter("telnum");
		String me_telchk = multipart.getParameter("telchk");
		String me_email = multipart.getParameter("email");
		String me_addr = multipart.getParameter("addr");
		String[] characterList = multipart.getParameterValues("character");
		String me_character = "";
		if(characterList!=null){
			for(int i = 0 ; i < characterList.length ; i++){
				me_character = me_character + characterList[i];
				if(i<characterList.length-1){
					me_character = me_character +",";
				}
			}
		}
		String me_img = "";
		Enumeration<String> files = multipart.getFileNames();
		while (files.hasMoreElements()) {
			String file = files.nextElement();
			me_img = multipart.getFilesystemName(file);
		}

		MemberService service = new MemberServiceImpl();
		HttpSession ses = request.getSession();
		MemberDTO loginUser = (MemberDTO) ses.getAttribute("loginUser");
		MemberDTO userInfo = service.getUserInfo(me_id);
		
		if(me_pwd.equals("")){
			me_pwd=userInfo.getMe_pwd();
		}
		if(me_phone.equals("")){
			me_phone=userInfo.getMe_phone();
		}
		if(me_telnum.equals("")){
			me_telnum=userInfo.getMe_telnum();
		}
		if(me_email.equals("")){
			me_email=userInfo.getMe_email();
		}
		if(me_addr.equals("")){
			me_addr=userInfo.getMe_addr();
		}
		if(me_img==null){
			me_img=userInfo.getMe_img();
		}
		
		MemberDTO user = new MemberDTO(me_id, me_pwd, me_phone, me_telnum, me_telchk, me_email, me_addr, me_character, me_img);
		int result = service.memberupdate(user);
		
		if(result>=1){
			MemberDTO updateloginUser = service.getUserInfo(me_id);
			ses.setAttribute("loginUser", updateloginUser);
		}
		
		response.sendRedirect("/single/memberinfo.do");
	}
}
