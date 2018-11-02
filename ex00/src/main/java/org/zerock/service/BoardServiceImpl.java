package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.NavDTO;
import org.zerock.domain.Post2VO;
import org.zerock.domain.fileVO;
import org.zerock.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO dao;
	
	@Transactional
	@Override
	public void regist(BoardVO board, fileVO fileVO) throws Exception {
		dao.create(board);
		System.out.println("absdbsa"+board.getBno());
		fileVO.setTbl_board_bno(board.getBno());
		dao.insertImage(fileVO);
		
	}
	
	// 게시글 조회수
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(Integer bno) throws Exception {
		dao.updateViewCnt(bno);
		return dao.read(bno);
	}
	
	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);
	}
	
	@Override
	public void remove(Integer bno) throws Exception {
		dao.delete(bno);
	}
	
	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
	}
	
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return dao.listSearch(cri);
	}
	
	@Override
	public int listSearchCount(Criteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}
	
	//게시판 리스트
	@Override
	public List<NavDTO> selectPost() throws Exception {
		return dao.selectPost();
	}
	@Override
	public List<Post2VO> selectPost2() throws Exception {
		return dao.selectPost2();
	}
}