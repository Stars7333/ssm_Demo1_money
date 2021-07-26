package com.yuntu.service.User;

import com.yuntu.pojo.User;
import com.yuntu.tools.PageUtil;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
		User getLogin(@Param("u_name") String u_name, @Param("u_pwd") String u_pwd);
		List<User> getAll();
		void getLists(PageUtil<User> pageUtil,@Param("u_status")int u_status);
		User getUser(int u_id);
		boolean add(User user);
		boolean Upd(User user);
		boolean Del(int u_id);

}
