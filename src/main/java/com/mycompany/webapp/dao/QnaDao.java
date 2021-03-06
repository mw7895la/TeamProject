
package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;
@Repository
public class QnaDao {

	@Resource
	private SqlSessionTemplate sst;
	
	public  List<Qna> selectAll() {
		List<Qna> list = sst.selectList("mybatis.mapper.qna.selectAll");
		return list;
	}

	public List<Qna> selectByPage(Pager pager) {
		List<Qna> list = sst.selectList("mybatis.mapper.qna.selectByPage", pager);
		return list;
	}

	public int countAll() {
		int rows = sst.selectOne("mybatis.mapper.qna.countAll");
		return rows;
	}

	public int insert(Qna qna) {
		int rows = sst.insert("mybatis.mapper.qna.insert", qna); 
		return rows;
	}

	public Qna selectByBno(int qnumber) {
		Qna qna = sst.selectOne("mybatis.mapper.qna.selectByBno", qnumber);
		return qna;
	}

	public int deleteByBno(int qnumber) {
		int rows = sst.delete("mybatis.mapper.qna.deleteByBno", qnumber);
		return rows;
	}

	public int updateQna(Qna qna) {//qphoto에 null이 들어가는지 확인한다.
		int rows = 0;
		if(qna.getQphoto() != null) {
			rows = sst.update("mybatis.mapper.qna.update", qna);
		} else {
			rows = sst.update("mybatis.mapper.qna.updateNoImage", qna);
		}
			
		return rows;
	}

	public int updateAnswer(Qna qna) {
		int rows = sst.update("mybatis.mapper.qna.updateAnswer", qna);
		return rows;
	}
	

}
