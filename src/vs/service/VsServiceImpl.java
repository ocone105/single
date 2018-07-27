package vs.service;

import static vs.fw.DBUtil.close;
import static vs.fw.DBUtil.getConnect;

import java.sql.Connection;
import java.sql.SQLException;

import vs.dao.VsDAO;
import vs.dao.VsDAOImpl;
import vs.dto.VsDTO;

public class VsServiceImpl implements VsService {

	@Override
	public int insert_vs(VsDTO post) {
		int result = 0;
		Connection con = null;		
		VsDAO dao = new VsDAOImpl();	
		try {
			con = getConnect();
			result = dao.insert_vs(post, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return result;
	}

}
