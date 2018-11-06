package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.NavDTO;
import org.zerock.domain.Post2VO;
import org.zerock.domain.FileVO;

public interface BoardService {
	
	public void regist(BoardVO board, FileVO fileVO) throws Exception;
	
	public BoardVO read(Integer bno) throws Exception;
	
	public void modify(BoardVO board) throws Exception;
	
	public void remove(Integer bno) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public int listSearchCount(Criteria cri) throws Exception;
	
	//게시판 리스트
	public List<NavDTO> selectPost() throws Exception;
	public List<Post2VO> selectPost2() throws Exception;
 
}
