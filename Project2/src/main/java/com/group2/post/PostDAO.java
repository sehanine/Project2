package com.group2.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("pd")
public class PostDAO implements PostService{
	@Autowired
	private PostMapper mapper;

	@Override
	public void insertTrip(String email, String lang, String category, String organization, String title, String hash,
			String poster, String itinerary, String host_serve, String trip_pictures, String about_program, String addr,
			String cautions, String participants, String cost) {
		mapper.insertTrip(email, lang, category, organization, title, hash, poster, itinerary, host_serve, trip_pictures, about_program, addr, cautions, participants, cost);
	}

	@Override
	public PostVO getPostData(String email, int trip_no) {
		System.out.println("PostDAO: " + trip_no);
		return mapper.getPostData(email, trip_no);
	}
	

}
