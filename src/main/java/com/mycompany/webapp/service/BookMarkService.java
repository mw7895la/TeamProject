package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.BookMarkDAO;
import com.mycompany.webapp.dto.Post_bookmark;
import com.mycompany.webapp.dto.Register_photo;

@Service
public class BookMarkService {
	  
	
	@Resource 
	private BookMarkDAO bookmarkDAO;
	 
	
	//등 록
	public void Register(Post_bookmark pb) {
		bookmarkDAO.insertBookMark(pb);
		
	}
	
	//조 회
	/*public List<Post_bookmark> getBookMarkList(String memail) {
		List<Post_bookmark> list = bookmarkDAO.selectBookMark(memail);
		
		return list;
	}*/
	
	public List<Register_photo> getBookMarkList(String memail) {
		List<Register_photo> list = bookmarkDAO.selectBookMark(memail);
		
		return list;
	}
	//삭 제
	
	public void Delete(Post_bookmark pb) {
		 
		bookmarkDAO.deleteBookMark(pb);
		
	 
	}

	public int CheckBookMark(Post_bookmark pb) {
		int check = bookmarkDAO.CheckBookMark(pb);
		return check;
	}

	public void CancelBookMark(Post_bookmark pb) {
		bookmarkDAO.CancelBookMark(pb);
		
	} 
	 
	//북마크 업데이트 (삭제나 추가시 개수가 줄거나 늘어남)
	/*public String Update(int bnumber) {
		
	}*/
}
