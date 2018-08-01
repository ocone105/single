package free.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import free.dto.FreeCmtDTO;
import free.dto.FreeDTO;

public interface FreeService {
	int insert(FreeDTO post);
	int update(FreeDTO post);
	int delete(int fr_no);
	FreeDTO read(int fr_no);
	ArrayList<FreeDTO> getPostList();
	ArrayList<FreeDTO> getCtgList(String fr_ctg); 

}
