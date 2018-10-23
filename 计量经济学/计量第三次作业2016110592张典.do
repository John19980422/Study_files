
set more off 

gen Y=log(RealGDP)

gen t = _n

tsset t
gen d_Y = d.Y
gen Y_d_Y = 400 * d_Y

drop if Year < 1955
drop if Year > 2009

sum d_Y,d
sum Y_d_Y,d
corrgram Y_d_Y, lags(4)

arima Y_d_Y , ar(1)
estat ic
arima Y_d_Y , ar(2)
estat ic
arima Y_d_Y , ar(3)
estat ic
arima Y_d_Y , ar(4)
estat ic

varsoc Y_d_Y

dfuller Y_d_Y
