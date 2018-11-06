package org.zerock.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;
import org.zerock.domain.LoginDTO;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

@Controller
@RequestMapping("/")
public class MemberController {
	
	@Inject
	private MemberService service;
	
	// �α���
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGet(@ModelAttribute("dto") LoginDTO dto) {
		
	}
	
	// �α��� �Ϸ� �� 
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		
		MemberVO vo = service.login(dto);
		
		if (vo == null) {
			return;
		}
		
		model.addAttribute("memberVO", vo);
	}
	
	// �α׾ƿ�
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		
		Object obj = session.getAttribute("login");
		
		if(obj != null) {
			MemberVO vo = (MemberVO) obj;
			
			session.removeAttribute("login");
			session.invalidate();
			return "/";
			
			/*Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getUserid(), session.getId(), new Date());
			}*/
		}
		return "/logout";
	}
	
	// ȸ������ ������ �����ֱ��
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void join() throws Exception {}
	
	// ȸ������ ������ �ѱ��
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(MemberVO vo) throws Exception {
		service.join(vo);
		return "login";
	}
}