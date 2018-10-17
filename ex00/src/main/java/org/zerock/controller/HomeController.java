package org.zerock.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.persistence.MemberDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/join.do")
	public String join(Model model) throws Exception {
		return "join";
	}
	
	@RequestMapping("/login.do")
	public String login(Model model) throws Exception {
		return "login";
	}
	
	@RequestMapping("/header.do")
	public String header(Model model) throws Exception {
		return "include/header";
	}
	
	@RequestMapping("/nav.do")
	public String nav(@ModelAttribute NavDTO navDTO, Model model) throws Exception {
		model.addAttribute("menu",navDTO.getMenu());
		return "include/nav";
	}
	
	@RequestMapping("/footer.do")
	public String footer(Model model) throws Exception {
		return "include/footer";
	}	
}
