package com.naturalskin.utils;

import java.util.ArrayList;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.stereotype.Component;

@Component
public class GenerateOrderNo {
	
	private final Date date = new Date();
	private final DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
	
	public long init(int seq) {
		String dateStr = dateFormat.format(date).toString();
		String orderStr = dateStr+Integer.toString(seq);
		return Long.parseLong(orderStr);
	}
}
