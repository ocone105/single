package vs.query;

public class VsQuery {
	
	// vs게시글 삽입
	public static final String INSERT_POST = "insert into vs_board values(vs_seq.nextval, ?, ?, ?, ?, ?, 0, 0, sysdate)";
	
	// 게시글 목록 
	public static final String READ_POSTS = "select * from vs_board";

}
