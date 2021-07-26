package com.yuntu.tools;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
//配置自定义转换器

/*
* 1. 实现 Converter 接口, 做一个自定义类型的转换器
* 2. 将这个Converter 配置在ConversionService中
* 3. 告诉SpringMVC使用这个Converter
* */

/*
* Converter<S, T>: 两个泛型
* S: Source
* T: Target
* 将s转换t
* */
public class StringToDateConverter implements Converter<String, Date> {
		private String datePattern;//格式 yyyy-MM-dd

		public StringToDateConverter(String datePattern) {
				this.datePattern = datePattern;
		}

		@Override
		public Date convert(String s) {
				Date date = null;
				try {
						date = new SimpleDateFormat(datePattern).parse(s);
				} catch (ParseException e) {
						e.printStackTrace();
				}

				return date;
		}

}
