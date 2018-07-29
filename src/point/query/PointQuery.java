package point.query;

public class PointQuery {
	public static final String POINT_INSERT=
			"insert into point values(point_seq.nextval, ? , ?, ?, ?, sysdate ,?)";
	
	public static final String POINT_LIST =
			"select * from point order by po_no desc";
	
	public static final String POINT_READ =
			"select * from point where po_no =? ";
	
	
}
