package member.dao;

import java.sql.Connection;
import java.sql.SQLException;

import member.dto.MemberDTO;

public interface MemberDAO {
	int memberinsert(MemberDTO user, Connection con) throws SQLException;
	MemberDTO getLoginUser(String id, String pass, Connection con) throws SQLException;
	MemberDTO getUserInfo(String id, Connection con) throws SQLException;
	int memberupdate(MemberDTO user, Connection con) throws SQLException;
	int memberwithdrawal(String id, Connection con) throws SQLException;
}
