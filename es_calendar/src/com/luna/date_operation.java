package com.luna;

public class date_operation {
    CLinput cli;
    public void witch(int witch){
        if (witch == 1){
            this.add();
        }
        if (witch == 2){
            this.comp();
        }
        System.out.println("\nEnd program\n");
    }

    private void add(){
        int day = cli.readInt("Input day: ");
        int month = cli.readInt("Input month (number): ");
        int year = cli.readInt("Input year: ");
        int add_day = cli.readInt("Input days to add");
        int days = 31;

        boolean leap = false;

        if (year % 4 == 0){
            leap = true;
        }
        day += add_day;
        if (month == 4 || month == 6 || month == 9 || month == 11){
            days = 30;
        }
        if (month == 2){
            days = 28;
            if (leap){
                days++;
            }
        }

        if (day > days){
            day -= days;
            month++;
            if (month > 12){
                month -= 12;
                year++;
            }
        }

        System.out.println("New date: " + day + ":" + month + ":" + year);
    }

    private void comp(){
        int day_1 = cli.readInt("Input day: ");
        int month_1 = cli.readInt("Input month (number): ");
        int year_1 = cli.readInt("Input year: ");

        int day_2 = cli.readInt("Input day: ");
        int month_2 = cli.readInt("Input month (number): ");
        int year_2 = cli.readInt("Input year: ");

        int tot_d, tot_m, tot_y;

        int days_1 = 31, days_2 = 31, days_3 = 31;

        boolean leap_1 = false, leap_2 = false, leap_3 = false;

        if (year_1 % 4 == 0){
            leap_1 = true;
        }

        if (year_1 > year_2){
            tot_y = year_1 - year_2;
            tot_m = month_1 - month_2;
            if (tot_m <= 0) {
                tot_y--;
                tot_m += 12;
            }
            tot_d = day_1 - day_2;
            if (tot_d <= 0) {
                tot_m--;
            if (tot_y % 4 == 0){
                 leap_3 = true;
            }
            if (tot_m <= 0) {
                 tot_y--;
                 tot_m += 12;
                 if (tot_m == 4 || tot_m == 6 || tot_m == 9 || tot_m == 11) {
                     days_3 = 30;
                 }
                 if (tot_m == 2) {
                     days_3 = 28;
                     if (leap_3) {
                         days_3++;
                     }
                 }
            }
            tot_d += days_3;
            }
            System.out.println("the difference between the two dates is: "+ tot_d + "days, "+ tot_m +"month/s and "+ tot_y +"year/s" );
        }
        else {
            tot_y = year_2 - year_1;
            tot_m = month_2 - month_1;
            if (tot_m <= 0) {
                tot_y--;
                tot_m += 12;
            }
            tot_d = day_2 - day_1;
            if (tot_d <= 0) {
                tot_m--;
                if (tot_y % 4 == 0) {
                    leap_3 = true;
                }
                if (tot_m <= 0) {
                    tot_y--;
                    tot_m += 12;
                    if (tot_m == 4 || tot_m == 6 || tot_m == 9 || tot_m == 11) {
                        days_3 = 30;
                    }
                    if (tot_m == 2) {
                        days_3 = 28;
                        if (leap_3) {
                            days_3++;
                        }
                    }
                }
                tot_d += days_3;
            }
            System.out.println("the difference between the two dates is: " + tot_d + "days, " + tot_m + "month/s and " + tot_y + "year/s");
        }
    }
}
