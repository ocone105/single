package mate.service;

import java.sql.Connection;
import java.sql.SQLException;

import mate.dao.MateDAO;
import mate.dao.MateDAOImpl;
import mate.dto.MateDTO;
import static fw.DBUtil.*;

public class MateServiceImpl implements MateService {
	@Override
	public int insert_mt(MateDTO dto) {
		int result = 0;
		Connection con = null;
		con = getConnect();
		MateDAO dao = new MateDAOImpl();
		try {
			result = dao.insert_mt(dto, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return result;
	}

}
