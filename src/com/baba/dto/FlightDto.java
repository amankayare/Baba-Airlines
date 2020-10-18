package com.baba.dto;

public class FlightDto {
	private int flightId;
	private String source;
	private String destination;
	private String date;
	private String time;
	private int seatsEconomy;
	private int seatsBuisness;
	private double amountEconomy;
	private double amountBuisness;
	
	public FlightDto() {
		super();
	}

	public FlightDto(int flightId, String source, String destination, String date, String time, int seatsEconomy,
			int seatsBuisness, double amountEconomy, double amountBuisness) {
		super();
		this.flightId = flightId;
		this.source = source;
		this.destination = destination;
		this.date = date;
		this.time = time;
		this.seatsEconomy = seatsEconomy;
		this.seatsBuisness = seatsBuisness;
		this.amountEconomy = amountEconomy;
		this.amountBuisness = amountBuisness;
	}

	public int getFlightId() {
		return flightId;
	}

	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
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

	public int getSeatsEconomy() {
		return seatsEconomy;
	}

	public void setSeatsEconomy(int seatsEconomy) {
		this.seatsEconomy = seatsEconomy;
	}

	public int getSeatsBuisness() {
		return seatsBuisness;
	}

	public void setSeatsBuisness(int seatsBuisness) {
		this.seatsBuisness = seatsBuisness;
	}

	public double getAmountEconomy() {
		return amountEconomy;
	}

	public void setAmountEconomy(double amountEconomy) {
		this.amountEconomy = amountEconomy;
	}

	public double getAmountBuisness() {
		return amountBuisness;
	}

	public void setAmountBuisness(double amountBuisness) {
		this.amountBuisness = amountBuisness;
	}

	@Override
	public String toString() {
		return "flightId=" + flightId + ", source=" + source + ", destination=" + destination + ", date=" + date
				+ ", time=" + time + ", seatsEconomy=" + seatsEconomy + ", seatsBuisness=" + seatsBuisness
				+ ", amountEconomy=" + amountEconomy + ", amountBuisness=" + amountBuisness;
	}
		
}
