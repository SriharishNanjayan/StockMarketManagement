package com.market.cmp;
import com.market.dao.Item;
import java.util.Comparator;
public class IdentityComparatorDescending implements Comparator <Item> {

	@Override
	public int compare(Item o1, Item o2) {
		// TODO Auto-generated method stub
		return o2.getIdentity().compareTo(o1.getIdentity());
	}

}
