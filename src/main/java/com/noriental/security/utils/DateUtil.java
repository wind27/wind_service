package com.noriental.security.utils;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DateUtil {
	
	/**
	 * 一个星期中的第几天
	 * 
	 * @param date
	 * @return 0:第七天;1:第一天;2:第二天;3:第三天;4:第四天;5:第五天;6:第六天;
	 */
	public static int dayOfWeek(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		return cal.get(Calendar.DAY_OF_WEEK) - 1;
	}

	/**
	 * 将"yyyy-MM-dd HH:mm:ss"转换为Date类型
	 * 
	 * @param date "yyyy-MM-dd HH:mm:ss"
	 * @return Date
	 * @throws ParseException
	 */
	public static Date getDateFromString(String date) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.parse(date);
	}
	
	public static Date getDateFromString(String date, String format) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.parse(date);
	}
	
	
	/**
	 * 返回"yyyy-MM-dd HH:mm:ss"的中文星期表示
	 * 
	 * @param date "yyyy-MM-dd HH:mm:ss"
	 * @return 星期
	 * @throws ParseException
	 */
	public static String dayOfWeekInCN(String date) throws ParseException {
		int day = dayOfWeek(getDateFromString(date));
		switch (day) {
		case 1:
			return "周一";
		case 2:
			return "周二";
		case 3:
			return "周三";
		case 4:
			return "周四";
		case 5:
			return "周五";
		case 6:
			return "周六";
		case 0:
			return "周日";
		}
		return "";
	}
	
	public final static String dateToString(Date date) {
		DateFormat dateFormat;
		dateFormat = new SimpleDateFormat( "yyyy-MM-dd" );
		String resutl = dateFormat.format( date );
		return resutl;
	}
	
	public final static String dateToStringYYYY(Date date) {
		DateFormat dateFormat;
		dateFormat = new SimpleDateFormat( "yyyy" );
		String resutl = dateFormat.format( date );
		return resutl;
	}
	
	public final static String dateToStringYYYYMMDD(Date date) {
		DateFormat dateFormat;
		dateFormat = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss" );
		String resutl = dateFormat.format( date );
		return resutl;
	}
	public final static String dateToStringYYYYMMDDhms(Date date) {
		DateFormat dateFormat;
		dateFormat = new SimpleDateFormat( "yyyy-MM-dd HH-mm-ss" );
		String resutl = dateFormat.format( date );
		return resutl;
	}
	/**
	 * 某个日期的前一天
	 * 
	 * @author guchao
	 * @param date
	 * @return
	 */
	public static Date preDate(Date date){
		long l = date.getTime() - 1000 * 60 * 60 * 24;
		Date preDate = new Date(l);
//		System.out.println(preDate);
		return preDate;
	}
	
	/**
	 * 判断两个日期是否同一个年、月
	 * 
	 * @author guchao
	 * @param srcDate
	 * @param targetDate
	 * @return
	 */
	public static boolean isSameYearMonth(Date srcDate, Date targetDate){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		return sdf.format(srcDate).equals(sdf.format(targetDate));
	}
	

	/**
	 * 比较两个日期大小
	 * @param DATE1
	 * @param DATE2
	 * @return
	 */
	public static int compare_date(String DATE1, String DATE2) 
	{
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		try 
		{
			Date dt1 = df.parse(DATE1);
			Date dt2 = df.parse(DATE2);
			if (dt1.getTime() > dt2.getTime()) 
			{
				System.out.println("dt1 在dt2前");
				return 1;
			} else if (dt1.getTime() < dt2.getTime()) 
			{
				System.out.println("dt1在dt2后");
				return -1;
			} else 
			{
				return 0;
			}
		} catch (Exception exception) 
		{
			exception.printStackTrace();
		}
		return 0;
	}
	private static final Logger logger = LoggerFactory.getLogger(DateUtil.class);
	
	// 一天的时间长度
	private static long oneDay = 24 * 60 * 60 * 1000;
	/**
	 * 取得日期中比较大的一个
	 * @param schoolYearBegin	学年开始的日期
	 * @param queryBegin		查询的日期
	 * @return
	 */
	public static Date getMoreDate(Date schoolYearBegin, Date queryBegin)
	{
		if(schoolYearBegin == null || queryBegin == null)
		{
			return new Date();
		}
		int compares = schoolYearBegin.compareTo(queryBegin);
		if(logger.isDebugEnabled())
		{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			logger.debug(sdf.format(schoolYearBegin) + "\t" + sdf.format(queryBegin) + "\t" + compares); 
		}
		if(compares >= 0)
		{
			return schoolYearBegin;
		}
		else
		{
			return queryBegin;
		}
	}
	/**
	 * 取得日期中比较小的一个
	 * @param schoolYearEnd	学年结束的日期
	 * @param queryEnd		查询的日期
	 * @return
	 */
	public static Date getLessDate(Date schoolYearEnd, Date queryEnd)
	{
		if(schoolYearEnd == null || queryEnd == null)
		{
			return new Date();
		}
		int compares = schoolYearEnd.compareTo(queryEnd);
		if(logger.isDebugEnabled())
		{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			logger.debug(sdf.format(schoolYearEnd) + "\t" + sdf.format(queryEnd) + "\t" + compares); 
		}
		if(compares <= 0)
		{
			return schoolYearEnd;
		}
		else
		{
			return queryEnd;
		}
	}
	/**
	 * 对当前日期减去某几天
	 * @param currentDate	当前日期
	 * @param days			天数
	 * @return
	 */
	public static Date dateSubtract(Date currentDate, int days)
	{

		if(currentDate == null)
		{
			Date nowDate = new Date();
			if(logger.isDebugEnabled())
			{
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				logger.debug(sdf.format(nowDate) + "\t" + days); 
			}
			nowDate.setTime(nowDate.getTime() + days * oneDay);
			return nowDate;
		}
		else
		{
			if(logger.isDebugEnabled())
			{
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				logger.debug(sdf.format(currentDate) + "\t" + days); 
			}
			currentDate.setTime(currentDate.getTime() + days * oneDay);
			return currentDate;
		}
	}
	
	public static void main(String[] args) {
//		preDate(new Date());
		Calendar c = Calendar.getInstance();
		c.set(2013, 6, 1);
		System.out.println(c.getTime());
		
		Calendar c1 = Calendar.getInstance();
		c1.set(2013, 6, 9);
		System.out.println(isSameYearMonth(c.getTime(), c1.getTime()));
		System.out.println(dateToStringYYYYMMDDhms(new Date()));
	}
}
