package friends.service;

import java.util.ArrayList;

import friends.dto.MsgDTO;

public interface FriendsService {
	
	int insertMsg(MsgDTO msg);	// 메시지 작성
	
	ArrayList<MsgDTO> readMsg(String option, String me_id);	// 메시지 목록

}