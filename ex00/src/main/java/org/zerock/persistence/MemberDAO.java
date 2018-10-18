package org.zerock.persistence;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.LoginDTO;
import org.zerock.domain.MemberVO;

public interface MemberDAO {
	
	public String getTime();
	
	public void insertMember(MemberVO vo);
	
	public MemberVO readMember(String userid) throws Exception;
	
	public MemberVO readWithPW(String userid, String userpw) throws Exception;
	
	// �α���
	public MemberVO login(LoginDTO dto) throws Exception;
	
	// ȸ������
	public void join(MemberVO vo) throws Exception;
	
	public static int selectMember(@Param("userid") String userid) {
		return 0;
	}
}
