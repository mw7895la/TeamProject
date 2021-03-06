
package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.QnaDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Qna;
@Service
public class QnaService {
	
	@Resource
	private QnaDao qnaDao;
	
	public List<Qna> getqnaList() {
		List<Qna> list = qnaDao.selectAll();
		return list;
	}

	public List<Qna> getqnaList(Pager pager) {
		List<Qna> list = qnaDao.selectByPage(pager);
		return list;
	}

	public int getTotalRows() {
		int totalRows = qnaDao.countAll();
		return totalRows;
	}

	public void qnaWrite(Qna qna) {
		qnaDao.insert(qna);
		
	}

	public Qna getQna(int qnumber) {
		Qna qna = qnaDao.selectByBno(qnumber);
		return qna;
	}

	public void qnaDelete(int qnumber) {
		int rows = qnaDao.deleteByBno(qnumber);
		
	}

	public void qnaUpdate(Qna qna) {
		int rows = qnaDao.updateQna(qna);
		
	}

	public void qnaUpdateAnswer(Qna qna) {
		int rows = qnaDao.updateAnswer(qna);
		
	}



	

}

