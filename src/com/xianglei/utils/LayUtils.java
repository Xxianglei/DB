package com.xianglei.utils;

import java.util.HashMap;
import java.util.List;

public class LayUtils extends HashMap<String, Object> {

		 
	    public static LayUtils data(Integer count,List<?> data){
	    	LayUtils r = new LayUtils();
	        r.put("code", 0);
	        r.put("msg", "");
	        r.put("count", count);
	        r.put("data", data);
	        return r;
	    }
	 
}
