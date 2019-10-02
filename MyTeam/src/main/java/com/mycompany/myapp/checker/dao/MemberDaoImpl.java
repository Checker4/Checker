package com.mycompany.myapp.checker.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.myapp.checker.dto.MemberDto;

@Repository
public class MemberDaoImpl implements IMemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<MemberDto> selectMemberListAll() {
		List<MemberDto> memberListAll = new ArrayList<MemberDto>();
		memberListAll = sqlSession.selectList("memberMapper.selectMemberListAll");
		return memberListAll;
	}
	
	@Override
	public List<MemberDto> searchMemberList(HashMap<String, String> paramMap) {
		List<MemberDto> memberListSearched = new ArrayList<MemberDto>();
		memberListSearched = sqlSession.selectList("memberMapper.searchMemberList", paramMap);
		return memberListSearched;
	}
	
	@Override
	public Integer memberLoginCheck(HashMap<String, String> paramMap) {
		Integer result = sqlSession.selectOne("memberMapper.memberLoginCheck", paramMap);
		return result;
	}
	
	@Override
	public Integer memberIdDoubleCheck(String member_id) {
		Integer memberCnt = sqlSession.selectOne("memberMapper.memberIdDoubleCheck", member_id);
		return memberCnt;
	}
	
	@Override
	public MemberDto selectMemberDetail(int member_code) {
		MemberDto memberDto = sqlSession.selectOne("memberMapper.selectMemberDetail", member_code);
		return memberDto;
	}
	
	@Override
	public void insertMemberManagement(HashMap<String, String> paramMap) {
		sqlSession.selectOne("memberMapper.insertMemberManagement", paramMap);
	}
	
	@Override
	public void deleteMemberManagement(int member_code) {
		sqlSession.selectOne("memberMapper.deleteMemberManagement", member_code);
	}
	
	@Override
	public void updateMemberManagement(HashMap<String, String> paramMap) {
		sqlSession.selectOne("memberMapper.updateMemberManagement", paramMap);
	}
	
	
}
