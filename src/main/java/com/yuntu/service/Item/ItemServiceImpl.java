package com.yuntu.service.Item;

import com.yuntu.mapper.Item.ItemMapper;
import com.yuntu.pojo.Item;
import com.yuntu.pojo.User;
import com.yuntu.tools.PageUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ItemServiceImpl implements ItemService{
		@Resource
		private ItemMapper itemMapper;
		@Override
		public void getLists(PageUtil<Item> pageUtil, int u_status,int u_id) {
				int count = itemMapper.getCount(u_id);
				pageUtil.setCounts(count);
				if (count>0){//右边界
						if (pageUtil.getPageindex() > pageUtil.getPagecount()){
								pageUtil.setPageindex(pageUtil.getPagecount());
						}
						int index = (pageUtil.getPageindex()-1 ) * pageUtil.getPagesize();
						int size = pageUtil.getPagesize();
						pageUtil.setLists(itemMapper.getLists(index,size,u_status,u_id));
				}else {
						pageUtil.setLists(new ArrayList<Item>());
				}
		}

		@Override
		public List<Item> getAllName() {
				return itemMapper.getAllName();
		}

		@Override
		public boolean add(Item item) {
				if (itemMapper.add(item)==1)
						return true;
				return false;
		}

		@Override
		public Item getItem(int i_id) {
				return itemMapper.getItem(i_id);
		}

		@Override
		public boolean Upd(Item item) {
				if (itemMapper.Upd(item)==1)
						return true;
				return false;
		}

		@Override
		public boolean Del(int i_id) {
				if (itemMapper.Del(i_id)==1)
						return true;
				return false;
		}

		@Override
		public int UpdEvolve(int i_evolve, int i_id) {
				return itemMapper.UpdEvolve(i_evolve,i_id);
		}
}
