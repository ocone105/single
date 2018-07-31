package free.service;

import java.util.ArrayList;

import free.dto.FreeCmtDTO;

public interface FreeCmtService {
	int insert(FreeCmtDTO cmt);
	int update(FreeCmtDTO cmt);
	int delete(int fr_cmt_no);
	ArrayList<FreeCmtDTO> getCmtList(int fr_no);
	
}
