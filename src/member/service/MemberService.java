package member.service;

import member.dto.MemberDTO;
public interface MemberService {
	int memberinsert(MemberDTO user);
	MemberDTO getLoginUser(String id, String pass);
	MemberDTO getUserInfo(String id);
	int memberupdate(MemberDTO user);
	int memberwithdrawal(String id);
}
