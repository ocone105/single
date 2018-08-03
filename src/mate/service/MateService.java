package mate.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import mate.dto.MateCmtDTO;
import mate.dto.MateDTO;

public interface MateService {
	int insert_mt(MateDTO dto);
	ArrayList<MateDTO> group();
	MateDTO read_mt(int mt_no);
	int update_hits(int mt_no);
	
	
	
	int insert_mt_cmt(MateCmtDTO dto);
	ArrayList<MateCmtDTO> List_mt_cmt(int mt_no);
	int delete_mt_cmt(int mt_cmt_no);

}
