package com.lhy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.junit.runners.Parameterized.Parameters;

import com.lhy.entity.User;
import com.lhy.entity.Watch;

@Mapper
public interface WatchMapper {
	
	@Select("select * from user where uname=#{uname} and password=#{password}")
	User login(@Param("uname")String uname,@Param("password")String password);

	List<Watch> wlist(@Param("lname") String lname);
	
	int add(Watch watch);
	
	void del(Integer sid);
	
	Watch getById(Integer sid);
	
	void update(Watch watch);
	
	int deleteAll(@Param("ids") String ids);
}
