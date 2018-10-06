package com.xianglei.utils;

import java.time.Year;
import java.util.Calendar;
import java.util.Date;

import org.junit.Test;

public class GetDate {

	public String backDate() {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		String year = Integer.toString(calendar.get(Calendar.YEAR));
		String month = Integer.toString(calendar.get(Calendar.MONTH) + 1);
		String day = Integer.toString(calendar.get(Calendar.DAY_OF_MONTH));
		String hour = Integer.toString(calendar.get(Calendar.HOUR_OF_DAY));
		String minute =Integer.toString( calendar.get(Calendar.MINUTE));
		String second =Integer.toString( calendar.get(Calendar.SECOND));
		System.out.println(year+"-"+month+"-"+day+"-"+hour+":"+minute+":"+second);
		return year+"-"+month+"-"+day+"-"+hour+":"+minute+":"+second;

	}
}
