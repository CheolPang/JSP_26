package com.dao;

public class GuGuDan {
	public String process(int num) {
		String result = "";
		for (int i = 1; i <= 9; i++) {
			result += num + " x " + i + " = " + (num * i) + "<br>";
		}
		return result;
	}
}
