package com.mycompany.myapp.checker.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.myapp.checker.dto.MemberDto;
import com.mycompany.myapp.checker.dto.ProductDto;
import com.mycompany.myapp.checker.service.MemberServiceImpl;

@Controller
public class MemberController {

	@Autowired
	private MemberServiceImpl memberServiceImpl;

	// 1. 회원가입 폼
	@RequestMapping(value = "/member/signup")
	public String memberSignup() {
		return "checker/member/signup";
	}

	// 1-2. 회원가입시 아이디 중복체크
	@RequestMapping(value = "/member/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public String memberIdCheck(@RequestParam("member_id") String member_id) {
		System.out.println(member_id);
		Integer memberCnt = memberServiceImpl.memberIdDoubleCheck(member_id);
		System.out.println(memberCnt);
		return memberCnt.toString();
	}

	// 1-1. 회원가입 method
	@RequestMapping(value = "/member/signupOk")
	public String signupOk(@RequestParam HashMap<String, String> paramMap) {
		System.out.println(paramMap);
		memberServiceImpl.insertMemberManagement(paramMap);
		return "redirect:/home";
	}

	// 2. 로그인
	@RequestMapping(value = "/member/login")
	public String memberLogin() {
		return "checker/member/login";
	}

	// 2-2. 로그인 체크
	@RequestMapping(value = "/member/loginCheck", method = RequestMethod.GET)
	@ResponseBody
	public String memberLoginCheck(@RequestParam HashMap<String, String> paramMap) {
		String result = "";
		System.out.println(paramMap);
		
		Integer check = memberServiceImpl.memberLoginCheck(paramMap);
		System.out.println(check);
		
		if (check == 1) 
			result = "success";
		else 
			result = "fail";
		
		return result;
	}
	
	// 2-3. 로그인 세션
	@RequestMapping(value = "/member/loginSession", method = RequestMethod.POST)
	public String memberSession(@RequestParam HashMap<String, String> paramMap, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String result = "";
		System.out.println(paramMap);
		System.out.println("hihi---->>>>" + paramMap.get("id"));

		Integer check = memberServiceImpl.memberLoginCheck(paramMap);
		System.out.println(check);

		if (check == 1) {
			result = "success";

			session.setAttribute("userId", paramMap.get("id"));
			return "redirect:/home";

		} else {
			result = "fail";
			return "redirect:/login";
		}
	}
	
//	// 2-3. 로그인 세션
//	@RequestMapping(value = "/member/loginSession", method = RequestMethod.POST)
//	@ResponseBody
//	public ModelAndView memberSession(@RequestParam HashMap<String, String> paramMap, Model model,
//			HttpServletRequest request) {
//		ModelAndView mv = new ModelAndView();
//		HttpSession session = request.getSession();
//
//		String result = "";
//		System.out.println(paramMap);
//		System.out.println("hihi---->>>>" + paramMap.get("id"));
//
//		Integer check = memberServiceImpl.memberLoginCheck(paramMap);
//		System.out.println(check);
//
//		if (check == 1) {
//			result = "success";
//
//			session.setAttribute("userId", paramMap.get("id"));
//
//			mv.setViewName("checker/product/Lhome");
//
//		} else {
//			result = "fail";
//
//			mv.setViewName("checker/member/login");
//		}
//
//		return mv;
//	}

	@RequestMapping(value="/member/logout" , method = {RequestMethod.GET, RequestMethod.POST})
	public String memberLogout(HttpServletRequest request) {
		
        HttpSession session = request.getSession();
        session.invalidate();
        
        
//        ModelAndView mv = new ModelAndView();
//        mv.setViewName("checker/product/Lhome");
//        mv.addObject("msg", "logout");
//		return mv;
		
		return "redirect:/home";
	}

	// 4. 회원 전체 조회 (admin)
	@RequestMapping(value = "/admin/memberList")
	public String memberList(Model model) {
		List<MemberDto> memberListAll = memberServiceImpl.selectMemberListAll();
		model.addAttribute("list", memberListAll);
		return "checker/member/memberList";
	}

	// 4-1. 회원 조건 조회 (admin)
	@RequestMapping(value = "/admin/memberSearch")
	public ModelAndView memberSearch(@RequestParam HashMap<String, String> paramMap, Model model) {
		System.out.println("paramMap=" + paramMap);

		List<MemberDto> memberList = memberServiceImpl.searchMemberList(paramMap);
		for (int i = 0; i < memberList.size(); i++) {
			MemberDto dto = (MemberDto) memberList.get(i);
			dto.printInfo();
		}

//		model.addAttribute("list", memberList);
//		System.out.println(this.getClass().getName() + ".memberSearch()::memberList.size()=" + memberList.size());
//		System.out.println("memberList=" + memberList);

		ModelAndView mv = new ModelAndView();
		mv.addObject("list", memberList);
		mv.setViewName("checker/member/memberList");
		
//		return "redirect:/admin/memberList";
//		return "checker/member/memberList";
		return mv;
	}

	// 4-3-1. 회원 추가 폼 (admin)
	@RequestMapping(value = "/admin/memberAddForm")
	public String memberAddForm() {
		return "checker/member/memberAddForm";
	}

	// 4-3-2. 회원 추가 (admin)
	@RequestMapping(value = "/admin/memberAdd")
	public String memberAdd(@RequestParam HashMap<String, String> paramMap) {
//		System.out.println(paramMap);
		memberServiceImpl.insertMemberManagement(paramMap);
		return "redirect:/admin/memberList";
	}

	// 4-4-1. 회원 수정 폼 (admin)
	@RequestMapping(value = "/admin/memberUpdateForm")
	public String memberUpdateForm(@RequestParam("member_code") int member_code, Model model) {
		MemberDto memberDto = memberServiceImpl.selectMemberDetail(member_code);
		model.addAttribute("MemberDto", memberDto);
		return "checker/member/memberUpdateForm";
	}

	// 4-4-2. 회원 수정 (admin)
	@RequestMapping(value = "/admin/memberUpdate")
	public String memberUpdate(@RequestParam HashMap<String, String> paramMap, RedirectAttributes redirectAttributes) {
		memberServiceImpl.updateMemberManagement(paramMap);
		redirectAttributes.addAttribute("member_code", paramMap.get("member_code"));
		return "redirect:/admin/memberList";
	}

	// 4-5. 회원 삭제 (admin)
	@RequestMapping(value = "/admin/memberDelete")
	public String memberDelete(@RequestParam("member_code") int member_code) {
		memberServiceImpl.deleteMemberManagement(member_code);
		return "redirect:/admin/memberList";
	}

}
