package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

//register_photo는 게시물 등록과 상세조회 페이지
//A_photo 클래스는  사진 한 세트(등록 시 최대 10개) 
public class A_photo {
	//register_photo의 pnumber를 참조하는 것과 동시에 기본키
	private int anumber;
	
	
	//사진 업로드 
	private String aimage;
	private MultipartFile aimageAttach;
	//사진 옆  설명 내용
	private String acontent;
	
	//사진
	private int alocation_number;
	private String alocation_name;
	
	//
	private int register_number;

	
	
	
	//
	

	//------------------Getter  ,  Setter-------------------//
	
	public A_photo(int anumber, 
			String aimage, 
			MultipartFile aimageAttach, 
			String acontent, 
			int alocation_number,
			String alocation_name, 
			int register_number) 
	{
		super();
		this.anumber = anumber;
		this.aimage = aimage;
		this.aimageAttach = aimageAttach;
		this.acontent = acontent;
		this.alocation_number = alocation_number;
		this.alocation_name = alocation_name;
		this.register_number = register_number;
	}

	public int getAnumber() {
		return anumber;
	}

	public void setAnumber(int anumber) {
		this.anumber = anumber;
	}

	

	public String getAcontent() {
		return acontent;
	}

	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}

	public int getAlocation_number() {
		return alocation_number;
	}

	public void setAlocation_number(int alocation_number) {
		this.alocation_number = alocation_number;
	}

	public String getAlocation_name() {
		return alocation_name;
	}

	public void setAlocation_name(String alocation_name) {
		this.alocation_name = alocation_name;
	}

	public int getRegister_number() {
		return register_number;
	}

	public void setRegister_number(int register_number) {
		this.register_number = register_number;
	}

	public String getAimage() {
		return aimage;
	}

	public void setAimage(String aimage) {
		this.aimage = aimage;
	}

	public MultipartFile getAimageAttach() {
		return aimageAttach;
	}

	public void setAimageAttach(MultipartFile aimageAttach) {
		this.aimageAttach = aimageAttach;
	}
	
	
	
	
	
	
	
	
	
}
