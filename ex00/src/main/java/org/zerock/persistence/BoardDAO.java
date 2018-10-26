package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardDAO {
	
	public void create(BoardVO vo) throws Exception;
	
	public BoardVO read(Integer bno) throws Exception;
	
	public void update(BoardVO vo) throws Exception;
	
	public void delete(Integer bno) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public List<BoardVO> listPage(int page) throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
	
	// 검색
	public List<BoardVO> listSearch(Criteria cri) throws Exception;
	
	// 검색 페이지?
	public int listSearchCount(Criteria cri) throws Exception;
	
	// 댓글 카운트
	public void updateReplyCnt(Integer bno, int amount) throws Exception;
	
	// 게시글 조회수
	public void updateViewCnt(Integer bno) throws Exception;

}
