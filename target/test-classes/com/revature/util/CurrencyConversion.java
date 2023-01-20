package com.revature.util;

import java.util.Scanner;

public class CurrencyConversion {
	public static void main(String [] args) {
		
		Scanner a = new Scanner(System.in);
		System.out.println("Enter the amount in USD: ");
		int USD = a.nextInt();
		float INR = 82.27f* USD;
		a.close();
		System.out.println("" +USD+ " USD in INR is equal to "+INR+ "Rs");
		
	
	}

}
