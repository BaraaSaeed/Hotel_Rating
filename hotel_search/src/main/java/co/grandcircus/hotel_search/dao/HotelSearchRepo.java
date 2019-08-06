/**
 * Copyright (c) 2019.
 * This program and the accompanying materials are made available
 * under my granted permission provided that this note is kept intact, unmodified and unchanged.
 * @ Author: Baraa Ali -  API and implementation.
 * All rights reserved.
*/
/**
 * 
 */
package co.grandcircus.hotel_search.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.hotel_search.entity.Hotel;

public interface HotelSearchRepo extends JpaRepository<Hotel, Long> {

	/**
	 * @param city
	 */
	List<Hotel> findByCity(String city);

}
