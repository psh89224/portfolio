package org.zerock.service;

import org.zerock.controller.LoginDTO;
import org.zerock.domain.MemberVO;

public interface MemberService {
	
	public MemberVO login(LoginDTO dto) throws Exception;

}
