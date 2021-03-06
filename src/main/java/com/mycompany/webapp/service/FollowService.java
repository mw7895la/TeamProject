package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.FollowDAO;
import com.mycompany.webapp.dto.Follows;
import com.mycompany.webapp.dto.Member;

@Service
public class FollowService {
	private static final Logger logger = LoggerFactory.getLogger(FollowService.class);
	//FollowDAO 주입
	@Resource
	private FollowDAO followDao;
	
	public Member getFollowInfo(String memail) {
		Member member=followDao.selectFollowInfo(memail);
		return member;
	}
	
	public Member getFollowingInfo(String memail) {
		Member member=followDao.selectFollowingInfo(memail);
		return member;
	}
	
	//user를 follow한 사람을 user memail을 통해 조회, follow한 사람들의 정보를 리스트로 리턴
	public List<Follows> getFollowList(String memail) {
		List<Follows> list=followDao.selectByFollow(memail);
		return list;
	}
	//user가 following한 사람을 그 사람들의 memail을 통해 조회, following한 사람들의 정보를 리스트로 리턴
	public List<Follows> getFollowingList(String memail) {
		List<Follows> list=followDao.selectByFollowing(memail);
		return list;
	}
	
	//user가 팔로우 버튼을 클릭했을 경우 팔로우 체크되도록 함. 팔로우 한 경우 해당 사람을 follows 테이블에 삽입, following 수 증가
	public int checkFollow(Follows follows) {
		int fnumber=followDao.insertfollow(follows);
		System.out.println(fnumber);
		return fnumber;
	}
	
	public int cancelfollow(Follows follows) {
		int row=followDao.deletefollow(follows);
		return row;
	}
	public int followCheck(Follows follow) {
		int result=followDao.selectChecking(follow);
		return result;
		
	}
	


}
