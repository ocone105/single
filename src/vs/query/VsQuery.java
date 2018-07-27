package vs.query;

public class VsQuery {
	
	// vs게시글 삽입
	public static final String VS_INSERT = "insert into vs_board values(vs_seq.nextval, ?, ?, ?, ?, ?, 0, sysdate)";

}
