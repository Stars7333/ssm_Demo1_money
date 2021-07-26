package com.yuntu.mapper.Item;

import com.yuntu.pojo.Item;
import com.yuntu.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ItemMapper {
		int getCount(int u_id);

		List<Item> getLists(@Param("index") int index, @Param("size") int size, @Param("u_status")int u_status,@Param("u_id")int u_id);
		Item getItem(int i_id);
		int UpdEvolve(@Param("i_evolve") int i_evolve,@Param("i_id")int i_id);
		List<Item> getAllName();
		int add(Item item);
		int Upd(Item item);
		int Del(int i_id);
}
