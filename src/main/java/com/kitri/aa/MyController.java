package com.kitri.aa;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	@Resource(name="memService") // 이놈이 setter로 다호출된다..
	MemberDAO daoService;

	public void setDaoService(MemberDAO daoService) {
		this.daoService = daoService;
	}
	
	@RequestMapping(value ="/form.do")
	public String form(){
		return "form";
	}
	
	@RequestMapping(value ="/add.do")
	public String add(@ModelAttribute("xxx") Member m){
		daoService.insertMember(m);
		return "add_result";
	}
	
	@RequestMapping(value ="/del.do")
	public String del(@ModelAttribute("xxx") Member m){
		daoService.deleteMember(m.getNum());
		return "redirect:list.do";
	}
	
	@RequestMapping(value ="/edit.do")
	public ModelAndView edit(@ModelAttribute("xxx") Member m){
		ModelAndView mav = new ModelAndView("edit");
		Member mm = daoService.getMember(m.getNum());
		mav.addObject("mm", mm);
		return mav;
	}
	
	@RequestMapping(value ="/edit_OK.do")
	public String edit_OK(@ModelAttribute("xxx") Member mm){
		daoService.updateMember(mm);
		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/list.do")
	public ModelAndView list(){
		ArrayList<Member> datas = (ArrayList<Member>) daoService.getMembers();
		ModelAndView mav = new ModelAndView("list");
		mav.addObject("datas", datas);
		return mav;
	}
}
