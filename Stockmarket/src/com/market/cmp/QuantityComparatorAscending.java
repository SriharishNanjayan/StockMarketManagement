package com.market.cmp;

import java.util.Comparator;

import com.market.dao.Item;

public class QuantityComparatorAscending implements Comparator<Item>{
	@Override
	public int compare(Item o1, Item o2) {
		return Integer.compare(o1.getQuantity_in_stock(), o2.getQuantity_in_stock());
	}
}
