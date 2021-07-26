package com.yuntu.service.Item;

import com.yuntu.pojo.Item;
import com.yuntu.tools.PageUtil;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ItemService {

		void getLists(PageUtil<Item> pageUtil, @Param("u_status")int u_status,@Param("u_id")int u_id);
		List<Item> getAllName();
		boolean add(Item item);
		Item getItem(int i_id);
		boolean Upd(Item item);
		boolean Del(int i_id);
		int UpdEvolve(@Param("i_evolve") int i_evolve,@Param("i_id")int i_id);
}
