package com.mycompany.myapp.checker.service;

import java.util.HashMap;
import java.util.List;

import com.mycompany.myapp.checker.dto.MemberDto;

public interface IMemberService {

	public List<MemberDto> selectMemberListAll();
	
	public Integer memberLoginCheck(HashMap<String, String> paramMap);
	
	public List<MemberDto> searchMemberList(HashMap<String, String> paramMap);
	
	public MemberDto selectMemberDetail(int member_code);

	public void insertMemberManagement(HashMap<String, String> paramMap);
	
	public void deleteMemberManagement(int member_code);
	
	public void updateMemberManagement(HashMap<String, String> paramMap);
	
	public Integer memberIdDoubleCheck(String member_id);
	
	
	
	
}
