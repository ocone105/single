package member.dao;

import java.sql.Connection;
import java.sql.SQLException;

import member.dto.MemberDTO;

public interface MemberDAO {
	int memberinsert(MemberDTO user, Connection con) throws SQLException;
	
}
