package com.progoti

import java.text.SimpleDateFormat
import java.text.DateFormat

/**
 * Created with IntelliJ IDEA.
 * User: Progoti
 * Date: 1/7/13
 * Time: 3:55 PM
 * To change this template use File | Settings | File Templates.
 */
class DateUtils {
    public final static String DEFAULT_DATE_PATTERN ="dd/mm/yyyy";

    public static Date parseDate(String date,String pattern){
        try{
            DateFormat df = new SimpleDateFormat(DEFAULT_DATE_PATTERN);
            if(pattern!=null && pattern.length()>0){
                df = new SimpleDateFormat(pattern);
            }
            Date result =  df.parse(date);
            return result;
        } catch(Exception e){
            return null;
        }


    }

    public static String formatDate(Date date,String pattern){
        try{
            DateFormat df = new SimpleDateFormat(DEFAULT_DATE_PATTERN);
            if(pattern!=null && pattern.length()>0){
                df = new SimpleDateFormat(pattern);
            }
            String result =  df.format(date);
            return result;
        } catch(Exception e){
            return null;
        }


    }

    public static Date getFirstDateOfMonth(int month,int year)
    {
        Calendar calender = Calendar.getInstance();
        calender.set(Calendar.MONTH,month-1)
        calender.set(Calendar.YEAR,year)
        calender.set(Calendar.DAY_OF_MONTH,1)
        calender.set(Calendar.HOUR,00)
        calender.set(Calendar.MINUTE,00)
        calender.set(Calendar.SECOND,00)
        calender.set(Calendar.MILLISECOND,000)


        return calender.getTime()
    }

    public static Date getLastDateOfMonth(int month,int year)
    {
        Calendar calender = Calendar.getInstance();
        calender.set(Calendar.MONTH,month-1)
        calender.set(Calendar.YEAR,year)

        calender.set(Calendar.DAY_OF_MONTH,calender.getActualMaximum(Calendar.DAY_OF_MONTH))
        calender.set(Calendar.HOUR,23)
        calender.set(Calendar.MINUTE,59)
        calender.set(Calendar.SECOND,59)
        calender.set(Calendar.MILLISECOND,999)


        return calender.getTime()

    }
}
