package com.market.cmp;
import java.util.Comparator;

import com.market.dao.Item;
public class VendorComparatorAscending implements Comparator<Item>{
	
		public int compare(Item o1, Item o2) {
			
			return o1.getVendor().compareTo(o2.getVendor());
		}

}

