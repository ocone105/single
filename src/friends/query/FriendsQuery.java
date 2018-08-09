package friends.query;

public class FriendsQuery {
	// �޽��� ����
	public static final String INSERT_MSG = "insert into message values(msg_seq.nextval, ?, ?, ?, ?, sysdate)";

	// �޽��� ��� 
	public static final String SEND_MSG = "select * from message where sender=?";
	public static final String RECIEVE_MSG = "select * from message where receiver=?";
	
	// ģ�� �߰�
	public static final String INSERT_BD = "insert into bd_list values(?,?)";
	
	// ģ�� ����
	public static final String DELETE_BD = "delete from bd_list where me_id=?, bd_id=?";
	
	// ������Ʈ ����
	public static final String UPDATE_BLACK = "update member set me_black=0 where me_id=?";
	// ģ�� ���
	public static final String SELECT_FRIENDS = "select * from bd_list where me_id=?";
	
	// ������Ʈ ���
	public static final String SELECT_BCKLIST = "select * from member where me_black>=10";

}
