package com.market.dao;

public class Item {
	private String identity ,name,vendor,manufacturing_date,expiry_date;
	private int quantity_in_stock;
	private double mrp,discount;
	public Item(String identity, String name, String vendor, String manufacturing_date, String expiry_date,
			int quantity_in_stock, double mrp, double discount) {
		super();
		this.identity = identity;
		this.name = name;
		this.vendor = vendor;
		this.manufacturing_date = manufacturing_date;
		this.expiry_date = expiry_date;
		this.quantity_in_stock = quantity_in_stock;
		this.mrp = mrp;
		this.discount = discount;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVendor() {
		return vendor;
	}
	public void setVendor(String vendor) {
		this.vendor = vendor;
	}
	public String getManufacturing_date() {
		return manufacturing_date;
	}
	public void setManufacturing_date(String manufacturing_date) {
		this.manufacturing_date = manufacturing_date;
	}
	public String getExpiry_date() {
		return expiry_date;
	}
	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}
	public int getQuantity_in_stock() {
		return quantity_in_stock;
	}
	public void setQuantity_in_stock(int quantity_in_stock) {
		this.quantity_in_stock = quantity_in_stock;
	}
	public double getMrp() {
		return mrp;
	}
	public void setMrp(double mrp) {
		this.mrp = mrp;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	
	
}
