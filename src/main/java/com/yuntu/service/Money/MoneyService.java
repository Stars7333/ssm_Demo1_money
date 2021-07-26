package com.yuntu.service.Money;

import com.yuntu.pojo.Item;
import com.yuntu.pojo.Money;
import com.yuntu.tools.PageUtil;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MoneyService {
		void getLists(PageUtil<Money> pageUtil);
		Money getMoney(int m_id);
		boolean add(Money money);
		boolean Upd(Money money);
		boolean Del(int m_id);
}
