package com.yuntu.mapper.Money;

import com.yuntu.pojo.Item;
import com.yuntu.pojo.Money;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MoneyMapper {
		int getCount();

		List<Money> getLists(@Param("index") int index, @Param("size") int size);
		Money getMoney(int m_id);
		int add(Money money);
		int Upd(Money money);
		int Del(int m_id);
}
