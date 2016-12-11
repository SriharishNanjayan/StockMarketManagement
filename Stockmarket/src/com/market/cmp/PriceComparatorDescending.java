package com.market.cmp;

import java.util.Comparator;

import com.market.dao.Item;

public class PriceComparatorDescending implements Comparator<Item>{
	@Override
	public int compare(Item o1, Item o2) {
		
		return Double.compare(o2.getMrp(), o1.getMrp());
	}
}
