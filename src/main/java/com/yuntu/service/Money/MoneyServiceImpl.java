package com.yuntu.service.Money;

import com.yuntu.mapper.Money.MoneyMapper;
import com.yuntu.pojo.Item;
import com.yuntu.pojo.Money;
import com.yuntu.tools.PageUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;

@Service
public class MoneyServiceImpl implements MoneyService{
		@Resource
		private MoneyMapper moneyMapper;

		@Override
		public void getLists(PageUtil<Money> pageUtil) {
				int count = moneyMapper.getCount();
				pageUtil.setCounts(count);
				if (count>0){//右边界
						if (pageUtil.getPageindex() > pageUtil.getPagecount()){
								pageUtil.setPageindex(pageUtil.getPagecount());
						}
						int index = (pageUtil.getPageindex()-1 ) * pageUtil.getPagesize();
						int size = pageUtil.getPagesize();
						pageUtil.setLists(moneyMapper.getLists(index,size));
				}else {
						pageUtil.setLists(new ArrayList<Money>());
				}
		}

		@Override
		public Money getMoney(int m_id) {
				return moneyMapper.getMoney(m_id);
		}

		@Override
		public boolean add(Money money) {
				if(moneyMapper.add(money)==1)
						return true;
				return false;
		}

		@Override
		public boolean Upd(Money money) {
				if(moneyMapper.Upd(money)==1)
						return true;
				return false;
		}

		@Override
		public boolean Del(int m_id) {
				if(moneyMapper.Del(m_id)==1)
						return true;
				return false;
		}
}
