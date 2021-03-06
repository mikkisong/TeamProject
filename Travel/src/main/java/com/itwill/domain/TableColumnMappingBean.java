package com.itwill.domain; 

import java.security.Timestamp;

public class TableColumnMappingBean {
	private int seq;
	private String board_id;
	private String column_code;
	private String board_name_kr;
	private String column_type;
	private String information;
	private String board_column_use;
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
	public String getColumn_code() {
		return column_code;
	}
	public void setColumn_code(String column_code) {
		this.column_code = column_code;
	}
	public String getBoard_name_kr() {
		return board_name_kr;
	}
	public void setBoard_name_kr(String board_name_kr) {
		this.board_name_kr = board_name_kr;
	}
	public String getColumn_type() {
		return column_type;
	}
	public void setColumn_type(String column_type) {
		this.column_type = column_type;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public String getBoard_column_use() {
		return board_column_use;
	}
	public void setBoard_column_use(String board_column_use) {
		this.board_column_use = board_column_use;
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
