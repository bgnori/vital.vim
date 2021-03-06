source spec/base.vim

let g:DT = vital#of('vital').import('DateTime')

Context DateTime.DateTime.from_unix_time()
  It makes a DateTime object from unix time
    let dt = g:DT.from_unix_time(1325441045)
    Should dt.year() is 2012
    Should dt.month() is 1
    Should dt.day() is 2
    Should dt.hour() is 3
    Should dt.minute() is 4
    Should dt.second() is 5
  End
End

Context DateTime.DateTime.from_format()
  It makes a DateTime object from string
    let dt = g:DT.from_format('2012-1-02 03:04:05', '%Y-%m-%d %H:%M:%S')
    Should dt.year() is 2012
    Should dt.month() is 1
    Should dt.day() is 2
    Should dt.hour() is 3
    Should dt.minute() is 4
    Should dt.second() is 5
  End
End

Context DateTime.DateTime.from_format()
  It makes a DateTime object from string
    let dt = g:DT.from_format('2012-1-02 03:04:05', '%Y-%m-%d %H:%M:%S')
    Should dt.year() is 2012
    Should dt.month() is 1
    Should dt.day() is 2
    Should dt.hour() is 3
    Should dt.minute() is 4
    Should dt.second() is 5
  End
End

Context DateTime.DateTime.from_julian_day()
  It makes a DateTime object from string
    let dt = g:DT.from_julian_day(2455928.627836)
    Should dt.year() is 2012
    Should dt.month() is 1
    Should dt.day() is 2
    Should dt.hour() is 3
    Should dt.minute() is 4
    Should dt.second() is 5
  End
End

Context DateTime.TimeDelta
  let dt1 = g:DT.from_format('2012-01-02 00:00:00', '%Y-%m-%d %H:%M:%S')
  let dt2 = g:DT.from_format('2012-01-02 03:04:05', '%Y-%m-%d %H:%M:%S')
  let delta = dt2['-'](dt1)
  It is a TimeDelta object
    Should delta.days() is 0
    Should delta.hours() is 3
    Should delta.minutes() is 184
    Should delta.seconds() is 11045
  End
End
