package friends.query;

public class FriendsQuery {
	// 메시지 삽입
	public static final String INSERT_MSG = "insert into message values(msg_seq.nextval, ?, ?, ?, ?, sysdate)";

	// 메시지 목록 
	public static final String SEND_MSG = "select * from message where sender=?";
	public static final String RECIEVE_MSG = "select * from message where receiver=?";
}
