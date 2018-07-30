package vs.dao;

import static fw.DBUtil.close;
import static vs.query.VsQuery.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vs.dto.VsDTO;

public class VsDAOImpl implements VsDAO {

	@Override
	public int insert(VsDTO post, Connection con) throws SQLException {
		System.out.println("VsDAO요청");
		int result = 0;
		PreparedStatement ptmt = con.prepareStatement(INSERT_POST);
		ptmt.setString(1, post.getVs_title());
		ptmt.setString(2, post.getVs_optionA());
		ptmt.setString(3, post.getVs_optionB());
		ptmt.setString(4, post.getVs_txt());
		ptmt.setString(5, post.getMe_id());
		
		result = ptmt.executeUpdate();
		System.out.println(result);
		close(ptmt);
		return result;
	}

	@Override
	public ArrayList<VsDTO> read(Connection con) throws SQLException {
		System.out.println("VsDAO요청");
		ArrayList<VsDTO> posts = new ArrayList<VsDTO>();
		VsDTO post = null;
		PreparedStatement ptmt = con.prepareStatement(READ_POSTS);
		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			post = new VsDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getDate(9));
			posts.add(post);
		}
		close(rs);
		close(ptmt);
		return posts;
	}
}
