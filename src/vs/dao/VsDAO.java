package vs.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import vs.dto.VsDTO;

public interface VsDAO {
	int insert(VsDTO dto, Connection con) throws SQLException;
	
	ArrayList<VsDTO> read(Connection con) throws SQLException;
}
