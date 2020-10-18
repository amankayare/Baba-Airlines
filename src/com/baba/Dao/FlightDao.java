package com.baba.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.baba.util.DButil;

public class FlightDao {

	private static final String Q_INSERT_USER_INFO = "insert into user(firstName,lastname,email,password) values(?,?,?,?)";
	private static final String Q_SELECT_ALL_USER_INFO = "select*from user";
	private static final String Q_SELECT_USER_INFO_BY_ID = "select * from user where id=?";
	private static final String T_UPDATE_USER_INFO = "update user set firstname=?,lastname=?,email =?,password =? where id =?";
	private static final String Q_DELETE_USER_INFO = "delete from user where id =?";

	public static int deleteUserinfo(int id) throws Exception {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		conn = DButil.getConnection();
		pstmt = conn.prepareStatement(Q_DELETE_USER_INFO);
		pstmt.setInt(1, id);
		int i = pstmt.executeUpdate();
		DButil.close(conn, pstmt, rs);
		return i;
	}

	/*
	 * public static int updateUserinfo(UserDTO userdto) throws Exception {
	 * 
	 * Connection conn = null; PreparedStatement pstmt = null; ResultSet rs =
	 * null;
	 * 
	 * conn = DButil.getConnection(); pstmt =
	 * conn.prepareStatement(T_UPDATE_USER_INFO); pstmt.setString(1,
	 * userdto.getFirstName()); pstmt.setString(2, userdto.getLastname());
	 * pstmt.setString(3, userdto.getEmail()); pstmt.setString(4,
	 * userdto.getPassword()); pstmt.setInt(5, userdto.getId());
	 * 
	 * int i = pstmt.executeUpdate(); DButil.close(conn, pstmt, rs); return i; }
	 * 
	 * public static int insertUserinfo(UserDTO dto) throws Exception {
	 * 
	 * Connection conn = null; PreparedStatement pstmt = null; ResultSet rs =
	 * null;
	 * 
	 * conn = DButil.getConnection(); pstmt =
	 * conn.prepareStatement(Q_INSERT_USER_INFO); pstmt.setString(1,
	 * dto.getFirstName()); pstmt.setString(2, dto.getLastname());
	 * pstmt.setString(3, dto.getEmail()); pstmt.setString(4,
	 * dto.getPassword());
	 * 
	 * int i = pstmt.executeUpdate(); DButil.close(conn, pstmt, rs); return i; }
	 * 
	 * public static UserDTO selectUserinfoById(int id) throws Exception {
	 * Connection conn = null; PreparedStatement pstmt = null; ResultSet rs =
	 * null;
	 * 
	 * conn = DButil.getConnection(); pstmt = (PreparedStatement)
	 * conn.prepareStatement(Q_SELECT_USER_INFO_BY_ID); pstmt.setInt(1, id);
	 * 
	 * rs = pstmt.executeQuery(); UserDTO userDTO = new UserDTO(); if
	 * (rs.next()) {
	 * 
	 * userDTO.setFirstName(rs.getString("firstName"));
	 * userDTO.setLastname(rs.getString("LastName"));
	 * userDTO.setEmail(rs.getString("email"));
	 * userDTO.setPassword(rs.getString("password"));
	 * userDTO.setId(rs.getInt("id")); } return userDTO; }
	 * 
	 * public static List<UserDTO> selectAlluserinfo() throws Exception {
	 * Connection conn = null; PreparedStatement pstmt = null; ResultSet rs =
	 * null; conn = DButil.getConnection(); pstmt =
	 * conn.prepareStatement(Q_SELECT_ALL_USER_INFO); rs = pstmt.executeQuery();
	 * 
	 * List<UserDTO> userDTOList = new ArrayList<>(); while (rs.next()) {
	 * 
	 * UserDTO userDTO = new UserDTO(); System.out.println("hhjh" +
	 * rs.getString("firstName"));
	 * userDTO.setFirstName(rs.getString("firstName"));
	 * userDTO.setLastname(rs.getString("lastName"));
	 * userDTO.setEmail(rs.getString("email"));
	 * userDTO.setPassword(rs.getString("password"));
	 * userDTO.setId(rs.getInt("id")); userDTOList.add(userDTO); } return
	 * userDTOList; }
	 * 
	 * public static void main(String[] args) {
	 * 
	 * String flight_source = ""; String flight_destination = ""; String
	 * flight_date = "";
	 * 
	 * String flight_time = "";
	 * 
	 * int flight_seats_economy = 511;
	 * 
	 * int flight_seats_buisness = 100; double flight_amount_economy = 100.2;
	 * 
	 * try { Class.forName("com.mysql.cj.jdbc.Driver"); Connection con =
	 * DriverManager.getConnection("jdbc:mysql://localhost:3306/BabaAirlines",
	 * "root", "root"); PreparedStatement s = con.prepareStatement(
	 * "insert into flight( flight_source ,flight_destination ,flight_date,flight_time ,flight_seats_economy ,flight_seats_buisness ,flight_amount_economy ,flight_amount_buisness) values(?,?,?,?,?,?,?,?) "
	 * ); ;
	 * 
	 * s.setString(1, flight_source); s.setString(2, flight_destination);
	 * s.setString(3, flight_date); s.setString(4, flight_time); s.setInt(5,
	 * flight_seats_economy); s.setInt(6, flight_seats_buisness); s.setDouble(7,
	 * flight_amount_economy);
	 * 
	 * int i = s.executeUpdate(); con.close(); System.out.println(i +
	 * " record added"); } catch (ClassNotFoundException e) {
	 * e.printStackTrace(); } catch (SQLException e) { e.printStackTrace(); }
	 * 
	 * }
	 */
}
