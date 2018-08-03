package mate.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import mate.dto.MateCmtDTO;
import mate.dto.MateDTO;

public interface MateDAO {
	int insert_mt(MateDTO dto, Connection con)throws SQLException;
	ArrayList<MateDTO> group(Connection con)throws SQLException;
	MateDTO read_mt(int mt_no, Connection con)throws SQLException;
	int update_hits(int mt_no, Connection con) throws SQLException;
	
	
	int insert_mt_cmt(MateCmtDTO dto, Connection con) throws SQLException;
	ArrayList<MateCmtDTO> List_mt_cmt(int mt_no, Connection con) throws SQLException;
	int delete_mt_cmt(int mt_cmt_no, Connection con) throws SQLException;
	
}
