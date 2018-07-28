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

}
