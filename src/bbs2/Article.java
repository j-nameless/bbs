package bbs2;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Article {
	private int id;
	private int pid;
	private int rootId;
	private String title;
	private String cont;
	private boolean isleaf;
	private String writer;
	private Date time;
	private List<Article> list = new ArrayList<Article>();
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getRootId() {
		return rootId;
	}
	public void setRootId(int rootId) {
		this.rootId = rootId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public boolean isIsleaf() {
		return isleaf;
	}
	public void setIsleaf(boolean isleaf) {
		this.isleaf = isleaf;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
	public void setList(List<Article> list){
		this.list = list;
	}
	public List<Article> getList() {
		return list;
	}
	

}
