package com.group2.post;

public interface PostService {
	public void insertTrip(
			String email, String lang,
			String category, String organization,
			String title, String hash,
			String poster, String itinerary,
			String host_serve, String trip_pictures,
			String about_program, String addr,
			String cautions, String participants,
			String cost);
	public PostVO getPostData(String email);
}
