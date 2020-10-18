package com.baba.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DButil {
	private static final String URL = "jdbc:mysql://127.0.0.1/";
	private static final String DATABASE_NAME = "BabaAirlines";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "root";
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";

	public static Connection getConnection() throws Exception {
		Connection conn = null;

		Class.forName(DRIVER).newInstance();
		conn = DriverManager.getConnection(URL + DATABASE_NAME, USERNAME, PASSWORD);
		System.out.println("connection done!!");

		return conn;
	}

	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) throws Exception {
		if (conn != null) {
			conn.close();

		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (rs != null) {
			rs.close();
		}
	}
}
