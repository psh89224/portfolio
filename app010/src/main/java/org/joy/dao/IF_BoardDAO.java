package org.joy.dao;

import java.util.List;

import org.joy.domain.BoardVO;
import org.joy.domain.Criteria;
import org.joy.domain.SearchCriteria;

/***
 * ...176p. DAO = Persistence 패키지.
 * 
 * @author Administrator
 *
 */
public interface IF_BoardDAO {

	public void insert(BoardVO vo) throws Exception;

	public BoardVO select(Integer bno) throws Exception;

	public void update(BoardVO vo) throws Exception;

	public void delete(Integer bno) throws Exception;

	public List<BoardVO> selectAll() throws Exception;

	public List<BoardVO> listPage(int page) throws Exception; // ...249p.added.

	// ...256p. 필요한 getPageStart()와 getPerPageNum()를 호출한 결과를 사용함.
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;

	public int countBno(Criteria cri) throws Exception;
	
	//...323p.
	//...S.use for dynamic sql	  
	public List<BoardVO> listSearch(SearchCriteria cri)throws Exception;
	  
	public int listSearchCount(SearchCriteria cri)throws Exception;
	//...E.use for dynamic sql	

}
