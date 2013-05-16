package com.progoti.security

class Month {

    String monthName;
    Integer monthNumber;
    static constraints = {
    }
    public static initialize(){
        def insertSql = [
                ['January',1],
                ['February',2],
                ['March',3],
                ['April',4],
                ['May',5],
                ['June',6],
                ['July',7],
                ['August',8],
                ['September',9],
                ['October',10],
                ['November',11],
                ['December',12]
        ]
        if ((Month.count() < 1) && insertSql) {
            insertSql.each {
                new Month(monthName: it[0],monthNumber: it[1]).save();
            }
        }
    }

    public boolean equals(Object o){
        if(o == null){
            return false;
        }else if(o !=null && (o instanceof Month)){
            Month month=(Month)o;
            if(this.monthName?.equalsIgnoreCase(month.monthName)){
                return true;
            }

        } else if(o instanceof String){
            String monthName=(String)o;
            if(this.monthName?.equalsIgnoreCase(monthName)){
                return true;
            }

        }

        return false;
    }
}
