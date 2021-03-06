package com.mycompany.webapp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Member;
import com.mycompany.webapp.dto.Post_like;
import com.mycompany.webapp.dto.SelfGuide;
import com.mycompany.webapp.service.LikeService;
import com.mycompany.webapp.service.SelfLikeService;

@Controller
@RequestMapping("/like")
public class LikeController {
	private Logger logger = LoggerFactory.getLogger(LikeController.class);
	@Resource
	private LikeService service;
	@Resource
	private SelfLikeService selfLikeService;
	
	@GetMapping("/getLikePhotolist")
	public String getLikePhoto(Model model, HttpSession session) {

		Member member = (Member) session.getAttribute("member");
		String memail = member.getMemail();
	
		List<Post_like> likelist = service.getLikePhotoList(memail);
		List<SelfGuide> list = selfLikeService.getLikePhotoList(memail);
		for(SelfGuide self : list) {
			logger.info(self.getSimage());
			logger.info(self.getSwriter());
		}
		model.addAttribute("likelist", likelist);
		model.addAttribute("selflikelist", list);
		
		return "like/getLikePhotolist";
	}

	
	@GetMapping("/likePush")
	public void likePush(int pnumber,HttpSession session, HttpServletResponse response) throws Exception {

		Member member = (Member) session.getAttribute("member");
		String memail = member.getMemail();
		
		Post_like post_like = new Post_like();
		post_like.setMemail(memail);
		post_like.setPnumber(pnumber);

		service.likepushphoto(post_like);

		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		String json = jsonObject.toString();
		// 응답보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();

	}
	@GetMapping("/likePushCancel")
	public void likePushCancel(int pnumber,Model model, HttpSession session, HttpServletResponse response) throws Exception {
		
		Member member = (Member) session.getAttribute("member");
		String memail = member.getMemail();
		
		Post_like post_like = new Post_like();
		post_like.setMemail(memail);
		post_like.setPnumber(pnumber);

		service.likepushCancel(post_like);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		String json = jsonObject.toString();
		// 응답보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
	}
	@GetMapping("/likePushCheck")
	public void likePushCheck(int pnumber,Model model, HttpSession session, HttpServletResponse response) throws Exception {

		 
		Member member = (Member) session.getAttribute("member");
		String memail = member.getMemail();
		
		Post_like post_like = new Post_like();
		post_like.setMemail(memail);
		post_like.setPnumber(pnumber);

		JSONObject jsonObject = new JSONObject();

		int check = service.likepushCheck(post_like);
		if (check == 0) {
			service.likepushphoto(post_like);
			jsonObject.put("result", "likesuccess");
			
		} else {
			service.likepushCancel(post_like);
			jsonObject.put("result", "likefailure");
		

		}
		
		String json = jsonObject.toString();
		// 응답보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
	}

	
}
