package com.market.cmp;

import java.util.Comparator;

import com.market.dao.Item;

public class VendorComparatorDescending implements Comparator<Item>{
	public int compare(Item o1, Item o2) {
		// TODO Auto-generated method stub
		return o2.getVendor().compareTo(o1.getVendor());
	}
}
