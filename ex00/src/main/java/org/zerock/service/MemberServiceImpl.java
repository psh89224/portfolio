package org.zerock.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.LoginDTO;
import org.zerock.domain.MemberVO;
import org.zerock.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberDAO dao;
	
	@Override
	public MemberVO login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}
	
	@Override
	public void join(MemberVO vo) throws Exception {
		dao.join(vo);
	}
}