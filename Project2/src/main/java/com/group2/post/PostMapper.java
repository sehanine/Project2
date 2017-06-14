package com.group2.post;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface PostMapper {
	
	@Insert("INSERT INTO trip_table(email, lang, category, organization, "
			+ "title, hash, poster, itinerary, host_serve, trip_pictures, about_program, " 
			+ "addr, cautions, participants, cost) "
		    + "VALUES(#{email}, #{lang}, #{category}, "
		    + "#{organization}, #{title}, "
		    + "#{hash}, #{poster}, #{itinerary}, "
		    + "#{host_serve}, #{trip_pictures}, "
		    + "#{about_program}, #{addr}, #{cautions}, "
		    + "#{participants}, #{cost})")
	public void insertTrip(
			@Param("email")String email, 
			@Param("lang")String lang,
			@Param("category")String category, 
			@Param("organization")String organization,
			@Param("title")String title, 
			@Param("hash")String hash,
			@Param("poster")String poster, 
			@Param("itinerary")String itinerary,
			@Param("host_serve")String host_serve, 
			@Param("trip_pictures")String trip_pictures,
			@Param("about_program")String about_program, 
			@Param("addr")String addr,
			@Param("cautions")String cautions, 
			@Param("participants")String participants,
			@Param("cost")String cost);
	
	@Select("SELECT * FROM trip_table "
			+ "WHERE email=#{email,jdbcType=VARCHAR}")
	public PostVO getPostData(String email);
}
