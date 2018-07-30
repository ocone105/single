package free.dao;

import static fw.DBUtil.close;
import static free.query.FreeQuery.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import free.dto.FreeDTO;

public class FreeDAOImpl implements FreeDAO {

	@Override
	public int insert(FreeDTO post, Connection con) throws SQLException {
		int result = 0;
		System.out.println("게시글 등록 dao: " + post);

		PreparedStatement ptmt = con.prepareStatement(INSERT_POST);
		ptmt.setString(1, post.getFr_title());
		ptmt.setString(2, post.getFr_txt());
		ptmt.setString(3, post.getFr_ctg());
		ptmt.setString(4, post.getFr_img());
		
		result = ptmt.executeUpdate();

		close(ptmt);
		return result;
	}

	@Override
	public int update(FreeDTO post, Connection con) throws SQLException {
		int result = 0;
		System.out.println("게시글 수정 dao: " + post);

		PreparedStatement ptmt = con.prepareStatement(UPDATE_POST);
		ptmt.setString(1, post.getFr_title());
		ptmt.setString(2, post.getFr_txt());
		ptmt.setString(3, post.getFr_ctg());
		ptmt.setString(4, post.getFr_img());
		ptmt.setInt(5, post.getFr_no());

		result = ptmt.executeUpdate();

		close(ptmt);
		return result;
	}

	@Override
	public int delete(int fr_no, Connection con) throws SQLException {
		int result = 0;
		System.out.println("게시글 삭제 dao: " + fr_no);

		PreparedStatement ptmt = con.prepareStatement(DELETE_POST);
		ptmt.setInt(1, fr_no);

		result = ptmt.executeUpdate();

		close(ptmt);
		return result;
	}

	@Override
	public FreeDTO read(int fr_no, Connection con) throws SQLException {
		FreeDTO post = null;
		int result = 0;

		PreparedStatement ptmt = con.prepareStatement(READ_POST);
		PreparedStatement ptmt2 = con.prepareStatement(READ_POST_HITS);

		ptmt.setInt(1, fr_no);
		ResultSet rs = ptmt.executeQuery();

		if (rs.next()) {
			post = new FreeDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5),
					rs.getInt(6)+1, rs.getString(7), rs.getString(8));
		}
		
		ptmt2.setInt(1,post.getFr_hits());
		ptmt2.setInt(2, fr_no);
		result = ptmt2.executeUpdate();

		//System.out.println("게시글 읽기 dao: " + post);
		close(ptmt);
		close(ptmt2);

		return post;
	}

	@Override
	public ArrayList<FreeDTO> getPostList(Connection con) throws SQLException {
		ArrayList<FreeDTO> postlist = new ArrayList<FreeDTO>();

		FreeDTO post = null;
		System.out.println("게시글 목록 dao요청");
		PreparedStatement ptmt = con.prepareStatement(SELECT_POST_ALL);
		ResultSet rs = ptmt.executeQuery();

		while (rs.next()) {
			post = new FreeDTO(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getInt(4), rs.getString(5));
			postlist.add(post);
			System.out.println("dao ㅇㅇㅇㅇ: "+post);
		}
		System.out.println("fr_post ArrayList의 갯수: " + postlist.size());

		return postlist;
	}

	@Override
	public ArrayList<FreeDTO> getCtgList(Connection con) throws SQLException {
		ArrayList<FreeDTO> postlist = new ArrayList<FreeDTO>();

		FreeDTO post = null;
		System.out.println("게시글 카테고리별 목록 dao요청");
		PreparedStatement ptmt = con.prepareStatement(SELECT_POST_CTG);
		ResultSet rs = ptmt.executeQuery();

		while (rs.next()) {
			post = new FreeDTO(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getInt(4), rs.getString(5));
			postlist.add(post);
			System.out.println("dao ㅇㅇㅇㅇ: "+post);
		}
		System.out.println("fr_post ArrayList의 갯수: " + postlist.size());

		return postlist;
	}

}
