package member.service;
import static fw.DBUtil.close;
import static fw.DBUtil.getConnect;

import java.sql.Connection;
import java.sql.SQLException;

import member.dao.MemberDAO;
import member.dao.MemberDAOImpl;
import member.dto.MemberDTO;
public class MemberServiceImpl implements MemberService {
	@Override
	public int memberinsert(MemberDTO user) {
		int result=0;
		MemberDAO dao = new MemberDAOImpl();
		Connection con = null;
		try{
			con = getConnect();
			result = dao.memberinsert(user, con);
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				close(con);
			}
			
		return result;
	}

	@Override
	public MemberDTO getLoginUser(String id, String pass) {
		MemberDTO loginUser=null;
		MemberDAO dao = new MemberDAOImpl();
		Connection con = null;
		try{
			con = getConnect();
			loginUser = dao.getLoginUser(id, pass, con);
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				close(con);
			}
			
		return loginUser;
	}

	@Override
	public MemberDTO getUserInfo(String id) {
		MemberDTO user=null;
		MemberDAO dao = new MemberDAOImpl();
		Connection con = null;
		try{
			con = getConnect();
			user = dao.getUserInfo(id, con);
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				close(con);
			}
			
		return user;
	}

	@Override
	public int memberupdate(MemberDTO user) {
		int result=0;
		MemberDAO dao = new MemberDAOImpl();
		Connection con = null;
		try{
			con = getConnect();
			result = dao.memberupdate(user, con);
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				close(con);
			}
			
		return result;
	}

	@Override
	public int memberwithdrawal(String id) {
		int result=0;
		MemberDAO dao = new MemberDAOImpl();
		Connection con = null;
		try{
			con = getConnect();
			result = dao.memberwithdrawal(id, con);
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				close(con);
			}
		return result;
	}
}
