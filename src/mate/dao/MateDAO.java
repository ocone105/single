package mate.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import mate.dto.MateDTO;

public interface MateDAO {
	int insert_mt(MateDTO dto, Connection con)throws SQLException;
	ArrayList<MateDTO> group(Connection con)throws SQLException;
	MateDTO read_mt(int mt_no, Connection con)throws SQLException;
	int update_hits(int mt_no, Connection con) throws SQLException;
}
