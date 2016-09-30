package com.clay.enums;

public enum OrderType {

	NEW("New", 1), CHANGEMODIFY("Modify", 2), CHANGEREPLACE("Replace", 3), CHANGEADD("Add", 4), CANCEL("Cancel", 5);

	private String name;
	private int index;

	private OrderType(String name, int index) {
		this.name = name;
		this.index = index;
	}

	public static String getName(int index) {
		for (OrderType c : OrderType.values()) {
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
