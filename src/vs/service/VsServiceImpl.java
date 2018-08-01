package vs.service;

import static fw.DBUtil.close;
import static fw.DBUtil.getConnect;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import vs.dao.VsDAO;
import vs.dao.VsDAOImpl;
import vs.dto.VsDTO;

public class VsServiceImpl implements VsService {
	@Override
	public int insert(VsDTO post) {	// vs게시글 작성
		System.out.println("Service요청");
		int result = 0;
		Connection con = null;		
		VsDAO dao = new VsDAOImpl();	
		try {
			con = getConnect();
			result = dao.insert(post, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return result;
	}

	@Override
	public ArrayList<VsDTO> read() {	// vs게시글 목록
		System.out.println("Service요청");
		ArrayList<VsDTO> posts = null;
		VsDAO dao = new VsDAOImpl();
		Connection con = null;
		try {
			con = getConnect();
			posts = dao.read(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}		
		return posts;
	}

	@Override
	public int update(int vs_no, String option) {	// 투표수 업데이트
		System.out.println("Service요청");
		int result = 0;
		Connection con = null;		
		VsDAO dao = new VsDAOImpl();	
		try {
			con = getConnect();
			result = dao.update(vs_no, option, con);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(con);
		}
		return result;
	}
}