package mate.query;

public class MateQuery {
	public static final String MATE_INSERT =
			"insert into mate_board values(mate_seq.nextval, ?, ?, sysdate, 0, ?, ?, ?, ?, ?, ?, '')";
	public static final String MATE_LIST =
			"select * from mate_board order by mt_no desc";
	public static final String MATE_READ =
			"select * from mate_board where mt_no = ?";
}
