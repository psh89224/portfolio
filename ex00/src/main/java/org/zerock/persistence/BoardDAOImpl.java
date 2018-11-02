package org.zerock.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.NavDTO;
import org.zerock.domain.Post2VO;
import org.zerock.domain.fileVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession session;

	private static String namespace = "org.zerock.mapper.BoardMapper";

	@Override
	public void create(BoardVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		return session.selectOne(namespace+".read", bno);
	}
	
	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace+".update", vo);
	}
	
	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace+".delete", bno);
	}
	
	// 목록보기
	@Override
	public List<BoardVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}
	
	// 페이징처리
	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		
		if(page <= 0) {
			page = 1;
		}
		
		page = (page -1) * 10;
		
		return session.selectList(namespace + ".listPage", page);
	}
	
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace+".listCriteria", cri);
	}
	
	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging", cri);
	}
	
	@Override
	public List<BoardVO> listSearch(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}
	
	@Override
	public int listSearchCount(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}
	
	// 댓글 카운트
	@Override
	public void updateReplyCnt(Integer bno, int amount) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("bno", bno);
		paramMap.put("amount", amount);
		
		session.update(namespace + ".updateReplyCnt", paramMap);
	}
	
	// 게시글 조회수
	@Override
	public void updateViewCnt(Integer bno) throws Exception {
		session.update(namespace + ".updateViewCnt", bno);
	}
	
	//게시판 리스트
	@Override
	public List<NavDTO> selectPost() throws Exception {
		return session.selectList(namespace + ".selectPost");		
	}
	@Override
	public List<Post2VO> selectPost2() throws Exception {
		return session.selectList(namespace + ".selectPost2");		
	}
	@Override
	public void insertImage(fileVO fileVO) throws Exception {
		session.insert(namespace+".insertImage", fileVO);
	}
}