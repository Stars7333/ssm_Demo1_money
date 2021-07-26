package com.yuntu.service.User;

import com.yuntu.mapper.User.UserMapper;
import com.yuntu.pojo.Money;
import com.yuntu.pojo.User;
import com.yuntu.tools.PageUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

		@Resource
		private UserMapper userMapper;


		@Override
		public User getLogin(String u_name, String u_pwd) {
				User u = null;
				u=userMapper.getLogin(u_name,u_pwd);
				if (null!=u){
						if (!u.getU_pwd().equals(u_pwd))
								u = null;
				}
				return u;
		}

		@Override
		public List<User> getAll() {
				return userMapper.getAll();
		}

		@Override
		public void getLists(PageUtil<User> pageUtil,int u_status) {
				int count = userMapper.getCount();
				pageUtil.setCounts(count);
				if (count>0){//右边界
						if (pageUtil.getPageindex() > pageUtil.getPagecount()){
								pageUtil.setPageindex(pageUtil.getPagecount());
						}
						int index = (pageUtil.getPageindex()-1 ) * pageUtil.getPagesize();
						int size = pageUtil.getPagesize();
						System.out.println("等级:"+u_status);
						if (u_status==1){
								pageUtil.setLists(userMapper.getListsAll(index,size));
								System.out.println("这是管理员1");
						}else {
								pageUtil.setLists(userMapper.getLists(index,size));
								System.out.println("这是个人无权查看密码1");
						}
				}else {
						pageUtil.setLists(new ArrayList<User>());
				}
		}

		@Override
		public User getUser(int u_id) {
				return userMapper.getUser(u_id);
		}

		@Override
		public boolean add(User user) {
				if (userMapper.add(user)==1)
						return true;
				return false;
		}

		@Override
		public boolean Upd(User user) {
				if (userMapper.Upd(user)==1)
						return true;
				return false;
		}

		@Override
		public boolean Del(int u_id) {
				if (userMapper.Del(u_id)==1)
						return true;
				return false;
		}

}
