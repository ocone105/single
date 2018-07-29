package mate.service;

import static fw.DBUtil.*;

import java.sql.Connection;
import java.sql.SQLException;

import mate.dao.MateDAO;
import mate.dao.MateDAOImpl;
import mate.dto.MateDTO;

public class MateServiceImpl implements MateService {

	@Override
	public int insert_mt(MateDTO dto) {
		int result = 0;
		MateDAO dao = new MateDAOImpl();
		Connection con = null;
		try {
			con = getConnect();
			result = dao.insert_mt(dto, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		
		return result;
	}

}
