package com.clay.enums;

public enum AccountType {

	DIRECT("Direct/Sell-thru", 1), BILLPARTNER("Bill Partner", 2), PAYPARTNER("Pay Partner", 3);

	private String name;
	private int index;

	private AccountType(String name, int index) {
		this.name = name;
		this.index = index;
	}

	public static String getName(int index) {
		for (AccountType c : AccountType.values()) {
			if (c.getIndex() == index) {
				return c.name;
			}
		}
		return null;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
	
	@Override
    public String toString() {
        return this.index + "_" + this.name;
    }
}
