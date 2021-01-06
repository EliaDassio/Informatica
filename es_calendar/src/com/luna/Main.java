package com.luna;

public class Main {

    public static void main(String[] args) {
	CLinput cli = new CLinput();
	date_operation da_o;

	int with = cli.readInt("1 to add a date to another, 2 to compare 2 dates: ");

	da_o = new date_operation();
	da_o.witch(with);
    }
}
