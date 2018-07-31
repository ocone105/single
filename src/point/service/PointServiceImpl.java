package point.service;

import static fw.DBUtil.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import point.dao.PointDAO;
import point.dao.PointDAOImpl;
import point.dto.PointDTO;

public class PointServiceImpl implements PointService{

	@Override
	public int po_insert(PointDTO dto) {
		int result = 0;
		PointDAO dao = new PointDAOImpl();
		Connection con = null;
		try {
			con = getConnect();
			result = dao.po_insert(dto, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return result;
	}

	@Override
	public ArrayList<PointDTO> po_list() {
		ArrayList<PointDTO> dtolist = null;
		PointDAO dao = new PointDAOImpl();
		Connection con = null;
		con = getConnect();
		try {
			dtolist=dao.po_list(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return dtolist;
	}

	@Override
	public PointDTO po_read(int po_no) {
		PointDTO dto = null;
		PointDAO dao = new PointDAOImpl();
		Connection con = getConnect();
		try {
			dto = dao.po_read(po_no, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return dto;
	}

}
