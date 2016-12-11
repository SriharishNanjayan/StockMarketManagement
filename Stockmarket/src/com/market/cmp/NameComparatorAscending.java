package com.market.cmp;
	import com.market.dao.Item;
	import java.util.Comparator;
	public class NameComparatorAscending implements Comparator<Item>{

		@Override
		public int compare(Item o1, Item o2) {
			
			return o1.getName().compareTo(o2.getName());
		}

}
