package free.dao;

import static free.query.FreeQuery.*;
import static fw.DBUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import free.dto.FreeCmtDTO;

public class FreeCmtDAOImpl implements FreeCmtDAO{

	@Override
	public int insert(FreeCmtDTO cmt, Connection con) throws SQLException {
		int result = 0;
		System.out.println("´ñ±Û µî·Ï dao: " + cmt);

		PreparedStatement ptmt = con.prepareStatement(INSERT_CMT);
		ptmt.setString(1, cmt.getFr_cmt_txt());
		ptmt.setInt(2, cmt.getFr_no());

		result = ptmt.executeUpdate();
		
		close(ptmt);
		return result;
	}

	@Override
	public int update(FreeCmtDTO cmt, Connection con) throws SQLException {
		int result = 0;
		System.out.println("´ñ±Û ¼öÁ¤ dao: " + cmt);

		PreparedStatement ptmt = con.prepareStatement(UPDATE_CMT);
		ptmt.setString(1, cmt.getFr_cmt_txt());
		ptmt.setInt(2, cmt.getFr_cmt_no());

		result = ptmt.executeUpdate();
		
		close(ptmt);
		return result;
	}

	@Override
	public int delete(int fr_cmt_no, Connection con) throws SQLException {
		int result = 0;
		System.out.println("´ñ±Û »èÁ¦ dao: " + fr_cmt_no);

		PreparedStatement ptmt = con.prepareStatement(DELETE_CMT);
		ptmt.setInt(1, fr_cmt_no);
		
		result = ptmt.executeUpdate();
		
		close(ptmt);
		return result;
	}

	@Override
	public ArrayList<FreeCmtDTO> getCmtList(int fr_no, Connection con) throws SQLException {
		ArrayList<FreeCmtDTO> cmtlist = new ArrayList<FreeCmtDTO>();

		FreeCmtDTO cmt = null;
		System.out.println("´ñ±Û ¸ñ·Ï dao¿äÃ»");
		PreparedStatement ptmt = con.prepareStatement(SELECT_CMT_LIST);
		ResultSet rs = ptmt.executeQuery();

		while (rs.next()) {
			cmt = new FreeCmtDTO(rs.getString(1), rs.getDate(2), rs.getString(3));
			cmtlist.add(cmt);
		}
		System.out.println("fr_cmt ArraListÀÇ °¹¼ö: " + cmtlist.size());

		return cmtlist;
	}
	
}
