import datetime as dt
import pytz

print(dt.datetime.now())

ist = pytz.timezone('Asia/Kolkata')

print(dt.datetime.now(ist))

print(dt.datetime.now().year)

print(dt.datetime.now().month)

print(dt.datetime.now().day)

print(dt.datetime.now().hour)

print(dt.datetime.now().minute)

print(dt.datetime.now().second)

print(dt.datetime.today())

print(dt.datetime.now().strftime('%Y-%m-%T-%H-%M'))

print(dt.datetime.today().strftime('%Y-%m-%T'))

print(dt.datetime.now().strftime('%c'))  # Search in browser for date format in "www.strftime.org"

print(dt.datetime.fromtimestamp(1963472436))  # This will convert Seconds to the Day format

print(dt.datetime.max)

print(dt.datetime.min)

