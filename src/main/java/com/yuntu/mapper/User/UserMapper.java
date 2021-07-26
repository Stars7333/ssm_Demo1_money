package com.yuntu.mapper.User;

import com.yuntu.pojo.Money;
import com.yuntu.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

		User getLogin(@Param("u_name") String u_name, @Param("u_pwd") String u_pwd);
		List<User> getAll();
		int getCount();

		List<User> getLists(@Param("index") int index, @Param("size") int size);
		List<User> getListsAll(@Param("index") int index, @Param("size") int size);
		User getUser(int u_id);
		int add(User user);
		int Upd(User user);
		int Del(int u_id);
}
