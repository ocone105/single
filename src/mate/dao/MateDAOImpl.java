package mate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import mate.dto.MateDTO;
import static mate.query.MateQuery.*;
import static fw.DBUtil.*;
public class MateDAOImpl implements MateDAO {

	@Override
	public int insert_mt(MateDTO dto, Connection con) throws SQLException {
		int result = 0;
		PreparedStatement ptmt = con.prepareStatement(MATE_INSERT);
		ptmt.setString(1, dto.getMt_title());
		ptmt.setString(2, dto.getMt_txt());
		ptmt.setString(3, dto.getMt_file());
		ptmt.setString(4, dto.getMt_map());
		ptmt.setString(5, dto.getMt_ctg());
		ptmt.setInt(6, dto.getMt_cnt());
		ptmt.setString(7, dto.getMe_id());
		ptmt.setString(8, dto.getMt_img());
		ptmt.setString(9, dto.getMt_particpant());
		result = ptmt.executeUpdate();
		close(ptmt);
		return result;
	}
	
	

}
