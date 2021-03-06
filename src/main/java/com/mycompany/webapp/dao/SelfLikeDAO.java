package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.Post_like;
import com.mycompany.webapp.dto.SelfGuide;

@Repository
public class SelfLikeDAO {
	private Logger logger = LoggerFactory.getLogger(SelfLikeDAO.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	public List<SelfGuide> selfgetLikeList(String memail) {
		logger.info("가져오는건가 못들어가는건가?");
		List<SelfGuide> likelist = sst.selectList("mybatis.mapper.selflike.selflikeAll",memail);
		for(SelfGuide sef:likelist) {
			logger.info(""+sef.getSnumber());
			logger.info(sef.getSwriter());
		}
		return likelist;
	}

	public void selfLikeInsert(Post_like post_like) {
		sst.insert("mybatis.mapper.selflike.selflikeInsert",post_like);
		
		
	}

	public void selfLikeDelete(Post_like post_like) {
		sst.delete("mybatis.mapper.selflike.selflikeDelete", post_like);
		
	}

	public int selfLikeCheck(Post_like post_like) {
		
		return sst.selectOne("mybatis.mapper.selflike.selflikeCheck",post_like);
	}

	public List<SelfGuide> likePhotoAllSelect(String memail) {
		return sst.selectList("mybatis.mapper.selflike.likePhotoAll",memail);
	}

}
