package dto;

import java.sql.Date;

public class ArticleDTO {
	private int ano;
	private String title;
	private String content;
	private int file_cnt;
	private int hit_cnt;
	private String writer;
	private String wdate;
	private int wdist;
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
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
	public int getFile_cnt() {
		return file_cnt;
	}
	public void setFile_cnt(int file_cnt) {
		this.file_cnt = file_cnt;
	}
	public int getHit_cnt() {
		return hit_cnt;
	}
	public void setHit_cnt(int hit_cnt) {
		this.hit_cnt = hit_cnt;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public int getWdist() {
		return wdist;
	}
	public void setWdist(int wdist) {
		this.wdist = wdist;
	}
	@Override
	public String toString() {
		return "ArticleDTO [ano=" + ano + ", title=" + title + ", content=" + content + ", file_cnt=" + file_cnt
				+ ", hit_cnt=" + hit_cnt + ", writer=" + writer + ", wdate=" + wdate + ", wdist=" + wdist + "]";
	}
	
	
}
