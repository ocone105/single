package vs.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import vs.dto.VsDTO;


public interface VsService {
	
	int insert(VsDTO dto);
	
	ArrayList<VsDTO> read();
}
