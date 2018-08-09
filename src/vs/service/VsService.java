package vs.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import vs.dto.VsCmtDTO;
import vs.dto.VsDTO;

public interface VsService {
	
	int insert(VsDTO post);	// vs�Խñ� �ۼ�
	
	ArrayList<VsDTO> read();	// vs�Խñ� ���
	
	int update(int vs_no, String option);	// ��ǥ�� ������Ʈ
	
	int insert(VsCmtDTO comment);	// vs��� �ۼ�
	
	ArrayList<VsCmtDTO> read(int vs_no);	// vs��� ���
}
