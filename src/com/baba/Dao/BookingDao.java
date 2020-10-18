package com.baba.Dao;

import java.util.ArrayList;
import java.util.Map;

import com.baba.dto.BookingDto;
import com.baba.dto.FlightDto;

public interface BookingDao {
	FlightDto modifySeats(int flightId, int buisnessCount, int economyCount) throws Exception;

	Map<String, Double> calculateAmount(BookingDto dto, int economyCount, int buisnessCount) throws Exception;

	int insertBookingInfo(BookingDto dto) throws Exception;

	public ArrayList<FlightDto> fetchFlights(String src, String dest, String date) throws Exception;

	public int updateFlight(FlightDto dto) throws Exception;

}
