package com.baba.service;

import java.util.ArrayList;
import java.util.Map;

import com.baba.dto.BookingDto;
import com.baba.dto.FlightDto;

public interface BookingService {
	public ArrayList<FlightDto> getFlights(String src, String dest, String date) throws Exception;

	int insertLog(BookingDto bookingDto) throws Exception; // insertBookingInfo()

	Map<String, Double> GetInvoice(BookingDto dto, int economyCount, int buisnessCount) throws Exception;
}
