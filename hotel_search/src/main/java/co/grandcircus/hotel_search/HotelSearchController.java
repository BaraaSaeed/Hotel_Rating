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
package co.grandcircus.hotel_search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.hotel_search.dao.HotelSearchRepo;
import co.grandcircus.hotel_search.entity.Hotel;

@Controller
public class HotelSearchController {

	@Autowired
	HotelSearchRepo hotelRepo;

	@RequestMapping("/")
	public ModelAndView showHome() {
		return new ModelAndView("redirect:/index");
	}

	@RequestMapping("/index")
	public ModelAndView chooseACity() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	@RequestMapping("/view-hotels")
	public ModelAndView viewHotels(@RequestParam("city") String city) {
		ModelAndView mav = new ModelAndView("hotels-list");
		mav.addObject("hotels", hotelRepo.findByCity(city));
		mav.addObject("city", city);
		return mav;
	}

	@RequestMapping("/show-detail")
	public ModelAndView showDetails(@RequestParam("id") Long id) {
		ModelAndView mav = new ModelAndView("hotel-info");
		mav.addObject("hotel", hotelRepo.findById(id).get());
		return mav;
	}

	@RequestMapping("/upvote")
	public ModelAndView processUpvote(@RequestParam("id") Long id, @RequestParam("city") String city) {

		Hotel rest = hotelRepo.getOne(id);
		if (rest.getRating() < 5) {
			rest.setRating(rest.getRating() + 1);
		}
		hotelRepo.save(rest);
		ModelAndView mav = new ModelAndView("redirect:/view-hotels");
		mav.addObject("city", city);
		return mav;
	}
}
