package free.service;

import static fw.DBUtil.close;
import static fw.DBUtil.getConnect;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import free.dao.FreeCmtDAO;
import free.dao.FreeCmtDAOImpl;
import free.dao.FreeDAO;
import free.dao.FreeDAOImpl;
import free.dto.FreeCmtDTO;
import free.dto.FreeDTO;

public class FreeServiceImpl implements FreeService {

	@Override
	public int insert(FreeDTO post) {
		int result = 0;
		FreeDAO dao = new FreeDAOImpl();
		Connection con = null;
		try {
			con = getConnect();
			result = dao.insert(post, con);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con);
		}
		return result;
	}

	@Override
	public int update(FreeDTO post) {
		int result = 0;
		FreeDAO dao = new FreeDAOImpl();
		Connection con = null;
		try {
			con = getConnect();
			result = dao.update(post, con);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con);
		}
		return result;
	}

	@Override
	public int delete(int fr_no) {
		int result = 0;
		FreeDAO dao = new FreeDAOImpl();
		Connection con = null;
		try {
			con = getConnect();
			result = dao.delete(fr_no, con);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con);
		}
		return result;
	}

	@Override
	public FreeDTO read(int fr_no) {
		FreeDTO post = null;
		FreeDAO dao = new FreeDAOImpl();
		Connection con = null;
		try {
			con = getConnect();
			post = dao.read(fr_no, con);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con);
		}
		return post;
	}

	@Override
	public ArrayList<FreeDTO> getPostList() {
		ArrayList<FreeDTO> postlist = null;
		FreeDAO dao = new FreeDAOImpl();
		Connection con = null;
		try {
			con = getConnect();
			postlist = dao.getPostList(con);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con);
		}
		return postlist;
	}

}
