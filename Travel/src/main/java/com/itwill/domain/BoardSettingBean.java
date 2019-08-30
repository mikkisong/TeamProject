package com.itwill.domain; 

import java.security.Timestamp;

public class BoardSettingBean {
	private int seq;
	private String board_id;
	private String board_name;
	private String board_type;
	private String writing_authority;
	private String modification_authority;
	private String delete_authority;
	private String read_authority;
	private int page_size;
	private int pages_size;
	private String notification_use;
	private String file_use;
	private String re_write_use;
	private String comments_use;
	private String regi_id;
	private Timestamp regi_date;
	private String regi_ip_addr;
	private String modifier_id;
	private Timestamp modifier_date;
	private String modifier_ip_addr;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getBoard_id() {
		return board_id;
	}
	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getBoard_type() {
		return board_type;
	}
	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}
	public String getWriting_authority() {
		return writing_authority;
	}
	public void setWriting_authority(String writing_authority) {
		this.writing_authority = writing_authority;
	}
	public String getModification_authority() {
		return modification_authority;
	}
	public void setModification_authority(String modification_authority) {
		this.modification_authority = modification_authority;
	}
	public String getDelete_authority() {
		return delete_authority;
	}
	public void setDelete_authority(String delete_authority) {
		this.delete_authority = delete_authority;
	}
	public String getRead_authority() {
		return read_authority;
	}
	public void setRead_authority(String read_authority) {
		this.read_authority = read_authority;
	}
	public int getPage_size() {
		return page_size;
	}
	public void setPage_size(int page_size) {
		this.page_size = page_size;
	}
	public int getPages_size() {
		return pages_size;
	}
	public void setPages_size(int pages_size) {
		this.pages_size = pages_size;
	}
	public String getNotification_use() {
		return notification_use;
	}
	public void setNotification_use(String notification_use) {
		this.notification_use = notification_use;
	}
	public String getFile_use() {
		return file_use;
	}
	public void setFile_use(String file_use) {
		this.file_use = file_use;
	}
	public String getRe_write_use() {
		return re_write_use;
	}
	public void setRe_write_use(String re_write_use) {
		this.re_write_use = re_write_use;
	}
	public String getComments_use() {
		return comments_use;
	}
	public void setComments_use(String comments_use) {
		this.comments_use = comments_use;
	}
	public String getRegi_id() {
		return regi_id;
	}
	public void setRegi_id(String regi_id) {
		this.regi_id = regi_id;
	}
	public Timestamp getRegi_date() {
		return regi_date;
	}
	public void setRegi_date(Timestamp regi_date) {
		this.regi_date = regi_date;
	}
	public String getRegi_ip_addr() {
		return regi_ip_addr;
	}
	public void setRegi_ip_addr(String regi_ip_addr) {
		this.regi_ip_addr = regi_ip_addr;
	}
	public String getModifier_id() {
		return modifier_id;
	}
	public void setModifier_id(String modifier_id) {
		this.modifier_id = modifier_id;
	}
	public Timestamp getModifier_date() {
		return modifier_date;
	}
	public void setModifier_date(Timestamp modifier_date) {
		this.modifier_date = modifier_date;
	}
	public String getModifier_ip_addr() {
		return modifier_ip_addr;
	}
	public void setModifier_ip_addr(String modifier_ip_addr) {
		this.modifier_ip_addr = modifier_ip_addr;
	}
	
	
}
