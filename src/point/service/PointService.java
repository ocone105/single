package point.service;

import java.util.ArrayList;

import point.dto.PointDTO;

public interface PointService {
	int po_insert(PointDTO dto);
	ArrayList<PointDTO> po_list();
	PointDTO po_read(int po_no);

}
