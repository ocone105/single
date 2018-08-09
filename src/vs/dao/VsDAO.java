package vs.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import vs.dto.VsCmtDTO;
import vs.dto.VsDTO;

public interface VsDAO {
	
	int insert(VsDTO post, Connection con) throws SQLException; 	// vs�Խñ� �ۼ�
	
	ArrayList<VsDTO> read(Connection con) throws SQLException;	// vs�Խñ� ���
	
	int update(int vs_no, String option, Connection con) throws SQLException;	// ��ǥ�� ������Ʈ
	
	int insert(VsCmtDTO comment, Connection con) throws SQLException; 	// vs��� �ۼ�
	
	ArrayList<VsCmtDTO> read(int vs_no, Connection con) throws SQLException;	// vs��� ���
}