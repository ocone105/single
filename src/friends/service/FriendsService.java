package friends.service;

import java.util.ArrayList;

import friends.dto.BdDTO;
import friends.dto.MsgDTO;
import member.dto.MemberDTO;

public interface FriendsService {
	
	int insertMsg(MsgDTO msg);	// �޽��� �ۼ�
	
	ArrayList<MsgDTO> readMsg(String option, String me_id);	// �޽��� ���
	
	int insertBd(BdDTO bd); // ģ�� �߰�
	
	int deleteBd(BdDTO bd); // ģ�� ����

	ArrayList<String> friendsList(String me_id);	// ģ�� ���

	ArrayList<MemberDTO> BckList();		// ������Ʈ ���
}