package vs.dao;

import java.sql.Connection;
import java.sql.SQLException;

import vs.dto.VsDTO;

public interface VsDAO {
	int insert_vs(VsDTO dto, Connection con)throws SQLException;

}
