package com.baba.dto;

public class BookingDto {
	private int bookingId;
	private String customerName;
	private String customerPhone;
	private int bookedSeatEconomy;
	private int bookedSeatBuisness;
	private int flightId;

	public BookingDto() {
		super();
	}

	public BookingDto(int bookingId, String customerName, String customerPhone, int bookedSeatEconomy,
			int bookedSeatBuisness, int flightId) {
		super();
		this.bookingId = bookingId;
		this.customerName = customerName;
		this.customerPhone = customerPhone;
		this.bookedSeatEconomy = bookedSeatEconomy;
		this.bookedSeatBuisness = bookedSeatBuisness;
		this.flightId = flightId;
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}


	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public int getBookedSeatEconomy() {
		return bookedSeatEconomy;
	}

	public void setBookedSeatEconomy(int bookedSeatEconomy) {
		this.bookedSeatEconomy = bookedSeatEconomy;
	}

	public int getBookedSeatBuisness() {
		return bookedSeatBuisness;
	}

	public void setBookedSeatBuisness(int bookedSeatBuisness) {
		this.bookedSeatBuisness = bookedSeatBuisness;
	}

	public int getFlightId() {
		return flightId;
	}

	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	@Override
	public String toString() {
		return "bookingId=" + bookingId + ", customerName=" + customerName + ", customerPhone=" + customerPhone
				+ ", bookedSeatEconomy=" + bookedSeatEconomy + ", bookedSeatBuisness=" + bookedSeatBuisness
				+ ", flightId=" + flightId;
	}

}
