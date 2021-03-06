
package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.Post_bookmark;
import com.mycompany.webapp.dto.Register_photo;

@Repository
public class BookMarkDAO {

	@Resource 
	private SqlSessionTemplate sst;
	
	/*public List<Post_bookmark> selectBookMark(String memail) {
		List<Post_bookmark> list = sst.selectList("mybatis.mapper.bookmark.selectBookMark",memail);
		return list;
	}*/
	
	public List<Register_photo> selectBookMark(String memail) {
		List<Register_photo> list = sst.selectList("mybatis.mapper.bookmark.selectBookMark",memail);
		return list;
	}
 
	public void insertBookMark(Post_bookmark pb) {
		sst.insert("mybatis.mapper.bookmark.insertBookMark",pb);
		
	}

	//delete 부분.
	public void deleteBookMark(Post_bookmark pb) {
		
		sst.delete("mybatis.mapper.bookmark.deleteBookMark",pb);
	}

	public int CheckBookMark(Post_bookmark pb) {
		int check = sst.selectOne("mybatis.mapper.bookmark.CheckBookMark",pb);
		return check;
	}

	public int CancelBookMark(Post_bookmark pb) {
		int row = sst.delete("mybatis.mapper.bookmark.CancelBookMark",pb);
		return row; 
	}
	
}



