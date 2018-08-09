package free.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import free.dto.FreeCmtDTO;
import free.dto.FreeDTO;

public interface FreeDAO {
	int insert(FreeDTO post,Connection con) throws SQLException; // �Խñ� ���
	
	int update(FreeDTO post,Connection con) throws SQLException; // �Խñ� ����
	
	int delete(int fr_no,Connection con) throws SQLException; // �Խñ� ����
	
	FreeDTO read(int fr_no,Connection con) throws SQLException; // �Խñ� �б�

	ArrayList<FreeDTO> getPostList(Connection con) throws SQLException;	// �Խñ� ��ü ���
	
	ArrayList<FreeDTO> getCtgList(String fr_ctg, Connection con) throws SQLException;		// �Խñ� ī�װ��� ���

	int report(String me_id, Connection con) throws SQLException; // ���� �Ű�
	
	ArrayList<FreeDTO> search(String column, String search, Connection con) throws SQLException;	// �Խñ� �˻�

}
