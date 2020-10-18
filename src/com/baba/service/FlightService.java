package com.baba.service;
import java.util.ArrayList;

import com.baba.dto.*;


public interface FlightService {
	int addFlight(FlightDto flight);
	int modifyFlight(FlightDto flight);
	int removeFlight(int flightId);
	ArrayList<FlightDto> flightList(int flightId);

}
