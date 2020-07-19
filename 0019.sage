import datetime

date = datetime.datetime(1901, 1, 1)
end_date = datetime.datetime(2000, 12, 31)

sundays_on_first_of_month = 0

while date <= end_date:
    date += datetime.timedelta(days=int(1))
    
    if date.day == 1 and date.weekday() == 6:
        sundays_on_first_of_month += 1

print(sundays_on_first_of_month)
