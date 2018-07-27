package vs.service;

import java.sql.Connection;
import java.sql.SQLException;

import vs.dto.VsDTO;


public interface VsService {
	
	int insert_vs(VsDTO dto);

}
