package friends.dao;

import static fw.DBUtil.close;
import static vs.query.VsQuery.UPDATE_OPTA;
import static vs.query.VsQuery.UPDATE_OPTB;
import static friends.query.FriendsQuery.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import friends.dto.MsgDTO;

public class FriendsDAOImpl implements FriendsDAO {

	@Override
	public int insertMsg(MsgDTO msg, Connection con) throws SQLException {	// 메시지 작성
		System.out.println("DAO요청");
		int result = 0;
		PreparedStatement ptmt = con.prepareStatement(INSERT_MSG);
		ptmt.setString(1, msg.getSender());
		ptmt.setString(2, msg.getReceiver());
		ptmt.setString(3, msg.getMsg_title());
		ptmt.setString(4, msg.getMsg_txt());
		result = ptmt.executeUpdate();
		System.out.println(result);
		close(ptmt);
		return result;
	}

	@Override
	public ArrayList<MsgDTO> readMsg(String option, String me_id, Connection con) throws SQLException {	// 메시지 목록
		System.out.println("DAO요청");
		ArrayList<MsgDTO> msgs = new ArrayList<MsgDTO>();
		MsgDTO msg = null;
		String sql = "";
		if(option.equals("A")){
			sql = SEND_MSG;
		}else if(option.equals("B")){
			sql = RECIEVE_MSG;
		}
		PreparedStatement ptmt = con.prepareStatement(sql);
		ptmt.setString(1, me_id);
		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			msg = new MsgDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6));
			msgs.add(msg);
		}
		close(rs);
		close(ptmt);
		return msgs;
	}

	@Override
	public ArrayList<String> friendsList(String me_id, Connection con) throws SQLException {	// 친구 목록
		System.out.println("DAO요청");
		ArrayList<String> friends = new ArrayList<String>();
		String friend = null;
		PreparedStatement ptmt = con.prepareStatement(SELECT_FRIENDS);
		ptmt.setString(1, me_id);
		ResultSet rs = ptmt.executeQuery();
		while (rs.next()) {
			friend = rs.getString(2);
			friends.add(friend);
		}
		System.out.println(me_id);
		System.out.println(friend);
		System.out.println(friends);
		close(rs);
		close(ptmt);
		return friends;
	}
}
