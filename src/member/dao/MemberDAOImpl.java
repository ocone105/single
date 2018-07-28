package member.dao;

import static fw.DBUtil.close;
import static member.query.MemberQuery.USER_INSERT;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import member.dto.MemberDTO;

public class MemberDAOImpl implements MemberDAO{

	@Override
	public int memberinsert(MemberDTO user, Connection con) throws SQLException {
		int result = 0;
		PreparedStatement ptmt = con.prepareStatement(USER_INSERT);
		
		ptmt.setString(1, user.getMe_id());
		ptmt.setString(2, user.getMe_pwd());
		ptmt.setString(3,user.getMe_name());
		ptmt.setDate(4, user.getMe_birth());
		ptmt.setString(5, user.getMe_gender());
		ptmt.setString(6, user.getMe_phone());
		ptmt.setString(7, user.getMe_telnum());
		ptmt.setString(8, user.getMe_telchk());
		ptmt.setString(9, user.getMe_email());
		ptmt.setString(10, user.getMe_character());
		ptmt.setString(11, user.getMe_img());
		ptmt.setString(12, user.getMe_loc());
		ptmt.setInt(13, user.getMe_black());

		result = ptmt.executeUpdate();
		close(ptmt);
		
		return result;
	}
}
