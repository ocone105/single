package mate.dao;

import java.sql.Connection;
import java.sql.SQLException;

import mate.dto.MateDTO;

public interface MateDAO {
	int insert_mt(MateDTO dto, Connection con)throws SQLException;

}
