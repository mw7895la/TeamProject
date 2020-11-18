package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class A_photo {
	//���� �Ѱ��� ��ȣ.
	private int anumber;
	//���� �̹���
	private MultipartFile aimage;
	//�ش� ������ ���� ���� ����
	private String acontent;
	
	//��ġ(���̵� ��, �Ž�, �ֹ� ...)
	private int alocation_number;
	private String alocation_name;
	
	//��� ��ȣ
	private int register_number;

	
	
	
	//������ 
	
	public A_photo(int anumber, 
			MultipartFile aimage, 
			String acontent, 
			int alocation_number, 
			int register_number) 
	{
		super();
		this.anumber = anumber;
		this.aimage = aimage;
		this.acontent = acontent;
		this.alocation_number = alocation_number;
		this.register_number = register_number;
	}

	//------------------Getter  ,  Setter-------------------//
	
	public int getAnumber() {
		return anumber;
	}

	public void setAnumber(int anumber) {
		this.anumber = anumber;
	}

	public MultipartFile getAimage() {
		return aimage;
	}

	public void setAimage(MultipartFile aimage) {
		this.aimage = aimage;
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
	
	
	
	
	
	
	
	
	
}
