package com.mycompany.webapp.dto;

public class Post_like {
	//���ƿ� ��
	private int likenumber;
	
	
	//MemberŬ������ �̸��� ����
	private String memail;
	
	
	//Register_photo�� pnumber ����.
	private int pnumber;


	public int getLikenumber() {
		return likenumber;
	}


	public void setLikenumber(int likenumber) {
		this.likenumber = likenumber;
	}


	public String getMemail() {
		return memail;
	}


	public void setMemail(String memail) {
		this.memail = memail;
	}


	public int getPnumber() {
		return pnumber;
	}


	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}
}
