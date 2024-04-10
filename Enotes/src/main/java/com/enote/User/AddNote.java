package com.enote.User;

import java.util.Date;

public class AddNote {
	
	private int id;
	private String title;
	private String content;
	private Date pdate;
	
	public AddNote(int id, String title, String content, Date pdate) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.pdate = pdate;
	}

	public AddNote() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPdate() {
		return pdate;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	
}
