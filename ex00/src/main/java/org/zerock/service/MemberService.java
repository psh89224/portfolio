package org.zerock.service;

import org.zerock.domain.LoginDTO;
import org.zerock.domain.MemberVO;

public interface MemberService {
	
	public MemberVO login(LoginDTO dto) throws Exception;
	
	public void join(MemberVO vo) throws Exception;

}
