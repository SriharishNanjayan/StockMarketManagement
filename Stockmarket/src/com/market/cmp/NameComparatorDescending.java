package com.market.cmp;

import java.util.Comparator;

import com.market.dao.Item;

public class NameComparatorDescending implements Comparator <Item>{

	@Override
	public int compare(Item o1, Item o2) {
		// TODO Auto-generated method stub
		return o2.getName().compareTo(o1.getName());
	}

}
