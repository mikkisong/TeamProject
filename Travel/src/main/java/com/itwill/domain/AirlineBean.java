package com.itwill.domain;

public class AirlineBean {
	int index; // 항공권 구분 번호 
	String member_id; // 예매자 ID 
	String trip; // 여행지 -   편도 ) 서울-홍콩 /  왕복 ) 서울-홍콩 / 			    다구간 ) 서울-홍콩/홍콩-베이징/베이징-서울
	String date; // 비행날짜 - 편도 ) 20190901 / 왕복 ) 20190901-20190905 / 다구간 ) 20190901-20190903-20190905
	String time; // 비행시간 - 편도 ) 0935-1050 / 왕복 ) 0935-1050/1500-1635 / 다구간 ) 0935-1050/1500-1635/1200-1300
	String count; // 인원 수 - 성인 1, 아동 1, 유아 1 -> 1/1/1
	String comp; // 좌석 등급 - Y (일반석) C (비즈니스석) F (일등석)
	String airline; // 항공사 - 대한항공, 아시아나항공
	int fare; // 가격 
	String reservation; // 예매하기 클릭 시 이동할 url 주소
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getTrip() {
		return trip;
	}
	public void setTrip(String trip) {
		this.trip = trip;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getComp() {
		return comp;
	}
	public void setComp(String comp) {
		this.comp = comp;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public int getFare() {
		return fare;
	}
	public void setFare(int fare) {
		this.fare = fare;
	}
	public String getReservation() {
		return reservation;
	}
	public void setReservation(String reservation) {
		this.reservation = reservation;
	}
	
	
}
