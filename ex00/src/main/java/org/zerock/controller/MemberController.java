package org.zerock.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

@Controller
@RequestMapping("/")
public class MemberController {
	
	@Inject
	private MemberService service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGet(@ModelAttribute("dto") LoginDTO dto) {
		
	}
	
	/*@RequestMapping(value = "/loginPost", method = RequestMethod.GET)
	public void loginPOST(Model model) throws Exception {
	}*/
	
	/*@RequestMapping("/login.do")
	public void login(Model model) throws Exception {
	}*/

	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		
		
		MemberVO vo = service.login(dto);
		
		if (vo == null) {
			return;
		}
		
		model.addAttribute("memberVO", vo);
		
	}

}
