package com.market.cmp;

import java.util.Comparator;

import com.market.dao.Item;

public class PriceComparatorAscending implements Comparator<Item> {

	@Override
		public int compare(Item o1, Item o2) {
			
			return Double.compare(o1.getMrp(), o2.getMrp());
		}
	}

