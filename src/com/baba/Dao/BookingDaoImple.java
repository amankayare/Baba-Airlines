package com.baba.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.baba.dto.BookingDto;
import com.baba.dto.FlightDto;
import com.baba.util.DButil;

public class BookingDaoImple implements BookingDao {

	private static final String Q_SELECT_FLIGHT_BY_ID = "select * from flight where flight_id = ?";
	private static final String Q_SELECT_FILTERED_FLIGHT_INFO = "select * from flight where flight_source = ? and flight_destination=? and flight_date=?";
	private static final String T_UPDATE_FLIGHT_SEATS = "update flight set flight_seats_economy = ? ,flight_seats_buisness=? where flight_id = ?";
	private static final String T_INSERT_BOOKING_DETAILS = "insert into booking_log (customer_name,customer_phone,booked_seats_economy,booked_seats_buisness,flight_id) values(?,?,?,?,?)";

	public FlightDto modifySeats(int flightId, int buisnessCount, int economyCount) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DButil.getConnection();
		pstmt = conn.prepareStatement(Q_SELECT_FLIGHT_BY_ID);
		pstmt.setInt(1, flightId);
		rs = pstmt.executeQuery();

		FlightDto flight = new FlightDto();
		rs.next();
		flight.setFlightId(rs.getInt("flight_id"));
		flight.setSource(rs.getString("flight_source"));
		flight.setDestination(rs.getString("flight_destination"));
		flight.setDate(rs.getString("flight_date"));
		flight.setSeatsEconomy(rs.getInt("flight_seats_economy") - economyCount);
		flight.setSeatsBuisness(rs.getInt("flight_seats_buisness") - buisnessCount);
		flight.setAmountEconomy(rs.getDouble("flight_amount_economy"));
		flight.setAmountBuisness(rs.getDouble("flight_amount_buisness"));

		System.out.println("kj" + flight.getSeatsBuisness());

		System.out.println("sds" + flight.getSeatsEconomy());

		DButil.close(conn, pstmt, rs);

		return flight;

	}

	public int updateFlight(FlightDto dto) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		Statement st = null;
		System.out.println("B:" + dto.getSeatsBuisness());
		System.out.println("E:" + dto.getSeatsEconomy());

		System.out.println("id:" + dto.getFlightId());

		conn = DButil.getConnection();
		//
		// pstmt = conn.prepareStatement(T_UPDATE_FLIGHT_SEATS);
		st = conn.createStatement();
		st.execute("update flight set flight_seats_economy = " + dto.getSeatsEconomy() + " ,flight_seats_buisness="
				+ dto.getSeatsBuisness() + " where flight_id = " + dto.getFlightId() + ";");

		// pstmt = conn.prepareStatement(
		// "update flight set flight_seats_economy = ? ,flight_seats_buisness=?
		// where flight_id = ?");
		// System.out.println("B:" + dto.getSeatsBuisness());
		// System.out.println("E:" + dto.getSeatsEconomy());

		// pstmt.setInt(1, 10);
		// pstmt.setInt(2, 10);
		// pstmt.setInt(3, dto.getFlightId());

		System.out.println("B:" + dto.getSeatsBuisness());
		System.out.println("E:" + dto.getSeatsEconomy());

		// int i = pstmt.executeUpdate();
		System.out.println("B:" + dto.getSeatsBuisness());
		System.out.println("E:" + dto.getSeatsEconomy());

		return 1;

	}

	public Map<String, Double> calculateAmount(BookingDto dto, int economyCount, int buisnessCount) throws Exception {

		double GST;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DButil.getConnection();
		pstmt = conn.prepareStatement(Q_SELECT_FLIGHT_BY_ID);
		pstmt.setInt(1, dto.getFlightId());
		rs = pstmt.executeQuery();
		Map<String, Double> map = new HashMap<>();

		if (rs.next()) {
			double amt = rs.getDouble("flight_amount_buisness") * buisnessCount
					+ rs.getDouble("flight_amount_economy") * economyCount;
			GST = 0.18 * amt;

			double bill = amt + GST;
			map.put("GST", GST);
			map.put("BILL", bill);
			DButil.close(conn, pstmt, rs);

		}

		return map;
	}

	public int insertBookingInfo(BookingDto dto) throws Exception {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DButil.getConnection();
		pstmt = conn.prepareStatement(T_INSERT_BOOKING_DETAILS);
		pstmt.setString(1, dto.getCustomerName());
		pstmt.setString(2, dto.getCustomerPhone());
		pstmt.setInt(4, dto.getBookedSeatBuisness());
		pstmt.setInt(3, dto.getBookedSeatEconomy());
		pstmt.setInt(5, dto.getFlightId());

		int i = pstmt.executeUpdate();
		DButil.close(conn, pstmt, rs);
		return i;
	}

	public ArrayList<FlightDto> fetchFlights(String src, String dest, String date) throws Exception {
		System.out.println("DAO Fetch");

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = DButil.getConnection();
		pstmt = conn.prepareStatement(Q_SELECT_FILTERED_FLIGHT_INFO);
		pstmt.setString(1, src);
		pstmt.setString(2, dest);
		pstmt.setString(3, date);

		rs = pstmt.executeQuery();

		ArrayList<FlightDto> flightDTOList = new ArrayList<>();
		while (rs.next()) {

			System.out.println(rs.getString("flight_source"));
			FlightDto flightDtoResult = new FlightDto();
			flightDtoResult.setFlightId(rs.getInt("flight_id"));
			flightDtoResult.setSource(rs.getString("flight_source"));
			flightDtoResult.setDestination(rs.getString("flight_destination"));
			flightDtoResult.setDate(rs.getString("flight_date"));
			flightDtoResult.setTime(rs.getString("flight_time"));
			flightDtoResult.setSeatsEconomy(rs.getInt("flight_seats_economy"));
			flightDtoResult.setSeatsBuisness(rs.getInt("flight_seats_buisness"));
			flightDtoResult.setAmountEconomy(rs.getDouble("flight_amount_economy"));
			flightDtoResult.setAmountBuisness(rs.getDouble("flight_amount_buisness"));

			flightDTOList.add(flightDtoResult);
		}
		System.out.println("DAo lower");
		return flightDTOList;

	}



}
