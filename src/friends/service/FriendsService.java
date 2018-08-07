package friends.service;

import java.util.ArrayList;

import friends.dto.MsgDTO;
import member.dto.MemberDTO;

public interface FriendsService {
	
	int insertMsg(MsgDTO msg);	// 메시지 작성
	
	ArrayList<MsgDTO> readMsg(String option, String me_id);	// 메시지 목록

	ArrayList<String> friendsList(String me_id);	// 친구 목록

	ArrayList<MemberDTO> BckList();		// 블랙리스트 목록
}