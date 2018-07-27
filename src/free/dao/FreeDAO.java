package free.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import free.dto.FreeCmtDTO;
import free.dto.FreeDTO;

public interface FreeDAO {
	int insert(FreeDTO post,Connection con) throws SQLException; // 게시글 등록
	
	int update(FreeDTO post,Connection con) throws SQLException; // 게시글 수정
	
	int delete(int fr_no,Connection con) throws SQLException; // 게시글 삭제
	
	FreeDTO read(int fr_no,Connection con) throws SQLException; // 게시글 읽기

	ArrayList<FreeDTO> getPostList(Connection con) throws SQLException;	// 게시글 전체 목록

}
