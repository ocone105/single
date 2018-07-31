package mate.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import mate.dto.MateDTO;

public interface MateService {
	int insert_mt(MateDTO dto);
	ArrayList<MateDTO> group();
	MateDTO read_mt(int mt_no);
	int update_hits(int mt_no);

}
