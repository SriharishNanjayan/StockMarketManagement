package com.market.cmp;
import java.util.Comparator;
import com.market.dao.Item;

public class QuantityComparatorDescending implements Comparator<Item>{
	
	public int compare(Item o1, Item o2) {
		// TODO Auto-generated method stub
		return Integer.compare(o2.getQuantity_in_stock(), o1.getQuantity_in_stock());
	}
}
