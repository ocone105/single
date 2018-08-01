package vs.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import vs.dto.VsDTO;

public interface VsDAO {
	
	int insert(VsDTO dto, Connection con) throws SQLException; 	// vs게시글 작성
	
	ArrayList<VsDTO> read(Connection con) throws SQLException;	// vs게시글 목록
	
	int update(int vs_no, String option, Connection con) throws SQLException;	// 투표수 업데이트
}
