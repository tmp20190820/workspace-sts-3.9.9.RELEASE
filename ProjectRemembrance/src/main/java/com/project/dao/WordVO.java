package com.project.dao;

public class WordVO {
	int q_no;
	String q_id;
	String q_front;
	String q_back;
	int q_hit;
	
	public int getQ_no() {
		return q_no;
	}
	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}
	public String getQ_id() {
		return q_id;
	}
	public void setQ_id(String q_id) {
		this.q_id = q_id;
	}
	public String getQ_front() {
		return q_front;
	}
	public void setQ_front(String q_front) {
		this.q_front = q_front;
	}
	public String getQ_back() {
		return q_back;
	}
	public void setQ_back(String q_back) {
		this.q_back = q_back;
	}
	public int getQ_hit() {
		return q_hit;
	}
	public void setQ_hit(int q_hit) {
		this.q_hit = q_hit;
	}
	
	@Override
	public String toString() {
		return "tmp1VO [q_no=" + q_no + ", q_id=" + q_id + ", q_front=" + q_front + ", q_back=" + q_back + ", q_hit="
				+ q_hit + "]";
	}
}
