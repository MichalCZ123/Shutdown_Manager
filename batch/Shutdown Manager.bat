::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFA5HSRa+GGS5E7gZ5vzo082OtmUIVt4McJrP3ruZLt8+60vlcpM/6nNZl/cfBA5Meh28YEE9qmEi
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQIDIA5ASAuVMiuXB7sd7+3pjw==
::eg0/rx1wNQPfEVWB+kM9LVsJDDeKKX++CaISqMX64euAp19TVuMrGA==
::fBEirQZwNQPfEVWB+kM9LVsJDEnPcQs=
::cRolqwZ3JBvQF1fEqQIDIA5AQxOMfEa7CLQb7fqb
::dhA7uBVwLU+EWBTJuSI=
::YQ03rBFzNR3SWATEuQ99SA==
::dhAmsQZ3MwfNWATEuQ99SA==
::ZQ0/vhVqMQ3MEVWAtB9wZVYZLA==
::Zg8zqx1/OA3MEVWAtB9wZVYZLA==
::dhA7pRFwIByZRRm3/FckLBRDQkSvPWW7AbAOiA==
::Zh4grVQjdCyDJGyX8VAjFA5HSRa+GGS5E7gZ5vzo082OtmUIVt4McJrP3ruZLt8+60vlcpM/6n9Cnfc/BA5Meh28YE8ZqGBDsWGXecKEtm8=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
::INTRO
@echo off
title Shutdown Manager

::MENU
:1
cls
set /p menu="Would you like to do? (s-shutdown, r-restart, h-hibernation, l-logoff, a-advanced, stop) "
if %menu% == s goto s
if %menu% == shutdown goto s
if %menu% == r goto r
if %menu% == restart goto r
if %menu% == h goto h-s
if %menu% == hibernation goto h-s
if %menu% == l goto l-s
if %menu% == logoff goto l-s
if %menu% == a shutdown -i
if %menu% == advanced shutdown -i
if %menu% == stop shutdown -a
goto 1

::Shutdown
:s
cls
set /p time_s="Time limit : "
:s-s
cls
set /p sure_s="Are you sure want to shutdown your PC after %time_s% seconds? (yes/no) "
if %sure_s% == yes goto y-s
if %sure_s% == no goto 1
goto s-s

:y-s
shutdown -s -t %time_s% -f
goto 1

::Restart
:r
cls
set /p time_r="Time limit : "
:r-s
cls
set /p sure_r="Are you sure want to reboot your PC after %time_r% seconds? (yes/no) "
if %sure_r% == yes goto y-r
if %sure_r% == no goto 1
goto r-s

:y-r
shutdown -r -t %time_r% -f
goto 1

::Hibernation
:h-s
cls
set /p sure_h="Are you sure want to Hibernate your PC? (yes/no) "
if %sure_h% == yes goto y-h
if %sure_h% == no goto 1
goto h-s

:y-h
shutdown -h
goto 1

::Logoff
:l-s
cls
set /p sure_l="Are you sure want to logoff actuall user (%username%)? (yes/no) "
if %sure_l% == yes goto y-s
if %sure_l% == no goto 1
goto l-s

:y-l
shutdown -l
goto 1