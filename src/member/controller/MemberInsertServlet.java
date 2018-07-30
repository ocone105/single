package member.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import member.dto.MemberDTO;
import member.service.MemberService;
import member.service.MemberServiceImpl;
@WebServlet(name = "memberinsert", urlPatterns = { "/memberinsert.do" })
public class MemberInsertServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		//颇老诀肺靛
		String savaFolder = "/upload";
		String encType = "euc-kr";
		int size = 5*1024*1024; 
		String realpath = "";
		
		ServletContext context = getServletContext();
		realpath = context.getRealPath(savaFolder);
		MultipartRequest multipart = new MultipartRequest(request, realpath, size, encType, new DefaultFileRenamePolicy());
		
		String me_id = multipart.getParameter("me_id");
		String me_pwd = multipart.getParameter("me_pwd");
		String me_name = multipart.getParameter("me_name");
		//Date积斥岿老贸府
		String birth = multipart.getParameter("me_birth");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		long me_birth=0;
		try {
			me_birth = sdf.parse(birth).getTime();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String me_gender = multipart.getParameter("me_gender");
		String me_phone = multipart.getParameter("me_phone");
		String me_telnum = multipart.getParameter("me_telnum");
		String me_telchk = multipart.getParameter("me_telchk");
		String me_email = multipart.getParameter("me_email");
		String me_addr = multipart.getParameter("me_addr");
		//己氢贸府
		String[] characterList = multipart.getParameterValues("me_character");
		String me_character = "";
		if(characterList!=null){
			for(int i = 0 ; i < characterList.length ; i++){
				me_character = me_character + characterList[i];
				if(i<characterList.length-1){
					me_character = me_character +",";
				}
			}
		}
		//捞固瘤贸府
		String me_img = "";
		Enumeration<String> files = multipart.getFileNames();
		while(files.hasMoreElements()){
			String file = files.nextElement();
			me_img = multipart.getFilesystemName(file);
		}
		if(me_img==null){
			me_img = "basicUser.png";
		}
		//困摹贸府
		String me_loc = "";
		String lat = multipart.getParameter("lat");
		String lon = multipart.getParameter("lon");
		me_loc = lat+","+lon;
		
		MemberService service = new MemberServiceImpl();
		MemberDTO user = new MemberDTO(me_id, me_pwd, me_name, new Date(me_birth), me_gender, me_phone, me_telnum, me_telchk, me_email, me_addr, me_character, me_img, me_loc);
		int result = service.memberinsert(user);
		
		response.sendRedirect("/single/pages/mainview.jsp");
	}
}
