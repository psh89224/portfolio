package org.zerock.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageMaker;
import org.zerock.domain.fileVO;
import org.zerock.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private BoardService service;
	
	// 등록
	@RequestMapping(value = "/register", method=RequestMethod.GET)
	public void registerGET(@ModelAttribute("post") int post) throws Exception {
		logger.info("register get .......");
		
	}
	
	@RequestMapping(value = "/register", method=RequestMethod.POST)
	public String registPOST(BoardVO board, RedirectAttributes rttr, fileVO fileVO, @RequestParam("post")int post) throws Exception {
		logger.info("regist post .......");
		logger.info(board.toString());
		
		System.out.println("files = " + fileVO.getImg_name());
		
		service.regist(board, fileVO);
		
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/board/listPage?post="+post;
	}
	
	// 조회	
	@RequestMapping(value="/readPage", method=RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, @ModelAttribute("cri") Criteria cri, Model model, @ModelAttribute("post") int post) throws Exception {
		model.addAttribute(service.read(bno));
		
	}
	
	// 삭제
	@RequestMapping(value="/removePage", method=RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, Criteria cri, RedirectAttributes rttr) throws Exception {
		
		service.remove(bno);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/board/listPage";
	}
	
	// 수정
	@RequestMapping(value="/modifyPage", method=RequestMethod.GET)
	public void modifyPagingGET(int bno, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		
		model.addAttribute(service.read(bno));
	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.POST)
	public String modifyPagingPOST(BoardVO board, Criteria cri, RedirectAttributes rttr) throws Exception {
		
		logger.info(cri.toString());
		service.modify(board);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		logger.info(rttr.toString());
		
		return "redirect:/board/listPage";
	}
	
	// 목록조회 + 페이징 처리 + Search 합침
	@RequestMapping(value ="/listPage", method = RequestMethod.GET)
		public void listPage(@ModelAttribute("cri")Criteria cri, Model model, @ModelAttribute("post") int post) throws Exception {
		
		logger.info(cri.toString());
		logger.info(cri.toString1());
		cri.setIdx(post);
		
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);
	}
}