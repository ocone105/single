package mate.service;

import java.sql.Connection;
import java.sql.SQLException;

import mate.dto.MateDTO;

public interface MateService {
	int insert_mt(MateDTO dto);

}
