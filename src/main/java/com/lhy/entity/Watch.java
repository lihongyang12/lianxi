package com.lhy.entity;

public class Watch {
	private Integer sid;
	private String sname;
	private String gou;
	private String jiao13;
	private String jiao14;
	private String jiao15;
	public Watch() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Watch(Integer sid, String sname, String gou, String jiao13, String jiao14, String jiao15) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.gou = gou;
		this.jiao13 = jiao13;
		this.jiao14 = jiao14;
		this.jiao15 = jiao15;
	}
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getGou() {
		return gou;
	}
	public void setGou(String gou) {
		this.gou = gou;
	}
	public String getJiao13() {
		return jiao13;
	}
	public void setJiao13(String jiao13) {
		this.jiao13 = jiao13;
	}
	public String getJiao14() {
		return jiao14;
	}
	public void setJiao14(String jiao14) {
		this.jiao14 = jiao14;
	}
	public String getJiao15() {
		return jiao15;
	}
	public void setJiao15(String jiao15) {
		this.jiao15 = jiao15;
	}
	@Override
	public String toString() {
		return "Watch [sid=" + sid + ", sname=" + sname + ", gou=" + gou + ", jiao13=" + jiao13 + ", jiao14=" + jiao14
				+ ", jiao15=" + jiao15 + "]";
	}
	
	
}
