package com.mycompany.myapp.checker.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.checker.dao.MemberDaoImpl;
import com.mycompany.myapp.checker.dto.MemberDto;

@Service
public class MemberServiceImpl implements IMemberService {

	@Autowired
	private MemberDaoImpl memberDaoImpl;
	
	@Override
	public List<MemberDto> selectMemberListAll() {
		return memberDaoImpl.selectMemberListAll();
	}
	
	@Override
	public Integer memberLoginCheck(HashMap<String, String> paramMap) {
		return memberDaoImpl.memberLoginCheck(paramMap);
	}
	
	@Override
	public List<MemberDto> searchMemberList(HashMap<String, String> paramMap) {
		return memberDaoImpl.searchMemberList(paramMap);
	}
	
	@Override
	public Integer memberIdDoubleCheck(String member_id) {
		return memberDaoImpl.memberIdDoubleCheck(member_id);
	}
	
	@Override
	public MemberDto selectMemberDetail(int member_code) {
		return memberDaoImpl.selectMemberDetail(member_code);
	}
	
	@Override
	public void insertMemberManagement(HashMap<String, String> paramMap) {
		memberDaoImpl.insertMemberManagement(paramMap);
	}
	
	@Override
	public void deleteMemberManagement(int member_code) {
		memberDaoImpl.deleteMemberManagement(member_code);
	}
	
	@Override
	public void updateMemberManagement(HashMap<String, String> paramMap) {
		memberDaoImpl.updateMemberManagement(paramMap);
	}
	
	
	
}
