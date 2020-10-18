package com.baba.service;

import java.util.ArrayList;
import java.util.Map;

import com.baba.Dao.BookingDaoImple;
import com.baba.dto.BookingDto;
import com.baba.dto.FlightDto;

public class BookingServiceImple implements BookingService {

	private BookingDaoImple bookingDaoImple;

	public BookingServiceImple() {

		this.bookingDaoImple = new BookingDaoImple();
	}

	@Override
	public ArrayList<FlightDto> getFlights(String src, String dest, String date) throws Exception {
		System.out.println("get Flight");

		return bookingDaoImple.fetchFlights(src, dest, date);
	}

	@Override
	public int insertLog(BookingDto bookingDto) throws Exception {

		return bookingDaoImple.insertBookingInfo(bookingDto);
	}

	@Override
	public Map<String, Double> GetInvoice(BookingDto dto, int economyCount, int buisnessCount) throws Exception {

		// modify flight table
		FlightDto Flightdto = bookingDaoImple.modifySeats(dto.getFlightId(), buisnessCount, economyCount);
		bookingDaoImple.updateFlight(Flightdto);
		return bookingDaoImple.calculateAmount(dto, economyCount, buisnessCount);

	}

}
