package vs.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import vs.dto.VsDTO;

public interface VsService {
	
	int insert(VsDTO dto);	// vs게시글 작성
	
	ArrayList<VsDTO> read();	// vs게시글 목록
	
	int update(int vs_no, String option);	// 투표수 업데이트
	
	
}
