REM *~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*
REM *How to install:
REM * 1.Copy the complete code.
REM * 2.Open up your notes program.
REM * 3.Put the code in.
REM * 4.Save the notes as WorldWar-3.bat
REM *  !It's important to have the .bat at end!
REM * 5.Doubleclick on It and trust the program.
REM * 6.Have Fun :D
REM *   Additional: Bugs or Suggestions pls in the Issue Tab on GitHub :)
REM *     Thx for playing. Have a good Day.
REM *~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*
REM * TotalWar:Nuke. A Textbased Batch Game In Pure Batch
REM * Copyright (C) 2015  Onsive.net, {Plus others users}
REM *
REM * This program is free software: you can redistribute it and/or modify
REM * it under the terms of the GNU General Public License as published by
REM * the Free Software Foundation, either version 2.1.4 of the License, or
REM * (at your option) any later version.
REM *
REM * This program is distributed in the hope that it will be useful,
REM * but WITHOUT ANY WARRANTY; without even the implied warranty of
REM * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM * GNU General Public License for more details.
REM *~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*
:start
@echo off
cls
color 0c
title Enter The Nuke
set version=Version 1.0.0
rem echo Welcome to Enter The Nuke, by Heacien.
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo %version%
echo.
pause
:players
cls
set player=
set replay=
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo      #---------------------#
echo      #Type '1' Singleplayer# & if '%op%'=='13' echo W - Win / E - End / S - Suggestion
echo      #Type '2' two player  #
echo      #Type '3' changelog   #
echo      #---------------------#
choice /c 123EWS /N /M "Make a selection"
if %errorlevel%==1 goto name
if %errorlevel%==2 goto p1name
if %errorlevel%==3 goto changelog
if %errorlevel%==4 goto end
if %errorlevel%==5 goto win
if %errorlevel%==6 goto suggesta
:name
cls
set name=
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
set /p name=Please type in your name (One word):
if '%name%'=='' goto name
rem Easter Egg:
if '%name%'=='Vincent' goto win
if '%name%'=='Heacien' goto win
:country
cls
set country=
set enemy=
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo      ______________________
echo         Welcome %name%!
echo      #--------------------#
echo      #Choose your country #
echo      #USA      Germany    #
echo      #Russia   Canada     #
echo      #France   Turkey     #
echo      #Japan    Switzerland#
echo      #Mexico   NSA        #
echo      #--------------------#
echo.
set /p country=Choose your Country:
if /i '%country%'=='usa' goto USA
if /i '%country%'=='russia' goto Russia
if /i '%country%'=='canada' goto Canada
if /i '%country%'=='germany' goto Germany
if /i '%country%'=='japan' goto Japan
if /i '%country%'=='turkey' goto Turkey
if /i '%country%'=='france' goto France
if /i '%country%'=='switzerland' goto Switzerland
if /i '%country%'=='mexico' goto Mexico
if /i '%country%'=='nsa' goto NSA
goto enemy
rem Enemy
:USA
set country=USA
goto enemy
:Russia
set country=Russia
goto enemy
:Canada
set country=Canada
goto enemy
:Germany
set country=Germany
goto enemy
:Japan
set country=Japan
goto enemy
:Turkey
set country=Turkey
goto enemy
:France
set country=France
goto enemy
:Switzerland
set country=Switzerland
goto enemy
:Mexico
set country=Mexico
goto enemy
:NSA
set country=NSA
goto enemy
REM Enemy
:enemy
set /a cpucountryrand=%random% %%10 +1
if '%cpucountryrand%'=='0' goto enemy
if '%cpucountryrand%'=='1' set enemy=Russia
if '%cpucountryrand%'=='2' set enemy=USA
if '%cpucountryrand%'=='3' set enemy=Canada
if '%cpucountryrand%'=='4' set enemy=Germany
if '%cpucountryrand%'=='5' set enemy=Japan
if '%cpucountryrand%'=='6' set enemy=Turkey
if '%cpucountryrand%'=='7' set enemy=France
if '%cpucountryrand%'=='8' set enemy=Sitzerland
if '%cpucountryrand%'=='9' set enemy=Mexico
if '%cpucountryrand%'=='10' set enemy=NSA
if '%cpucountryrand%'=='11' goto enemy
if '%enemy%'=='%country%' goto enemy
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.           Your country: -=%country%=-
echo.                    AGAINST
echo            Youre enemy is: -=%enemy%=-
timeout 4 /nobreak >nul
:difficulty
set difficulty=
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo Select Noobmode(0), Normal(1), Hard(2) or Overkill(x).
set /p difficulty=
if '%difficulty%'=='Noobmode' goto difnoob
if '%difficulty%'=='noobmode' goto difnoob
if '%difficulty%'=='0' goto difnoob
if '%difficulty%'=='Normal' goto difnorm
if '%difficulty%'=='normal' goto difnorm
if '%difficulty%'=='1' goto difnorm
if '%difficulty%'=='Hard' goto difhard
if '%difficulty%'=='hard' goto difhard
if '%difficulty%'=='2' goto difhard
if '%difficulty%'=='Overkill' goto difover
if '%difficulty%'=='overkill' goto difover
if '%difficulty%'=='x' goto difover
goto difficulty
:difnoob
title Loading ...
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo loading Noobmode ...
timeout 1 /nobreak >nul
tite Enter The Nuke
set user=99999
set cpu=20000
set money=99999
set nuke=999
set airstrike=999
set missiles=999
set cpunuke=9999
set cpuairstrike=9999
set cpumissiles=9999
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo Noobmode loaded
timeout 1 /nobreak >nul
goto gameplay
:difnorm
title Loading ...
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo loading Normalmode ...
timeout 1 /nobreak >nul
tite Enter The Nuke
set user=2000
set cpu=1500
set money=100
set nuke=1
set airstrike=2
set missiles=3
set cpunuke=1
set cpuairstrike=5
set cpumissiles=9999
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo Normalmode loaded
timeout 1 /nobreak >nul
goto gameplay
:difhard
title Loading ...
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo loading difficulty Hard ...
timeout 1 /nobreak >nul
tite Enter The Nuke
set user=2000
set cpu=2000
set money=100
set nuke=1
set airstrike=2
set missiles=3
set cpunuke=5
set cpuairstrike=999
set cpumissiles=9999
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo Hard loaded
timeout 1 /nobreak >nul
goto gameplay
:difover
title Loading ...
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo loading Overkill ...
timeout 1 /nobreak >nul
tite Enter The Nuke
set user=20000
set cpu=30000
set money=0
set nuke=1
set airstrike=2
set missiles=999
set cpunuke=9999
set cpuairstrike=9999
set cpumissiles=9999
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo.
echo Overkill loaded
timeout 1 /nobreak >nul
goto gameplay
:begin
set user=1000
set cpu=1000
set money=100
set nuke=1
set airstrike=2
set missiles=3
set cpunuke=1
set cpuairstrike=2
set cpumissiles=3
:gameplay
cls
title Enter The Nuke
set move=
set choice=
set cpucount=0
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo %name%, your turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %nuke%
echo                                                               Money: %money% $
echo 2. Fire Airstrike x %airstrike%
echo.
echo 3. Fire Missiles x %missiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo.
set /p move=Select your option:
if '%move%'=='1' goto nuke
if '%move%'=='2' goto airstrike
if '%move%'=='3' goto missiles
if '%move%'=='4' goto shop
if '%move%'=='5' goto surrender
if '%move%'=='6' goto donothing
if '%move%'=='1234' goto abcdefg
rem if '%move%'=='moneyboss' set /a cheats=1
rem if '%move%'=='moneyboss' set money=99999
rem if '%move%'=='chucknorris' set /a cheats=1
rem if '%move%'=='chucknorris' goto win
goto gameplay
:shop
title Shop
cls
:shopa
set moneyget=1500 * %moneyupg%
set buy=
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo %name%, you can buy anything if you have the money for that.
echo                                                               %country%: %user% DEF
echo Shop:
echo                                                               %enemy%: %cpu% DEF
echo 1. NUKE      (4000$)
echo                                                               Money: %money% $
echo 2. AIRSTRIKE (3250$)
echo.
echo 3. MISSLES   (2500$)
echo.
echo 4. 500 DEF   (5000$)
echo.
echo 5. 1000 DEF  (8000$)
echo.
echo 6. 200% Money  (----$)
echo.
echo 7. Leave Shop
echo.
set /p buy=Select your option:
if '%buy%'=='1' goto buynuke
if '%buy%'=='2' goto buyairstrike
if '%buy%'=='3' goto buymissles
if '%buy%'=='4' goto buydefa
if '%buy%'=='5' goto buydefb
if '%buy%'=='6' goto buymoney
if '%buy%'=='7' goto gameplay
goto shop
rem Shop
:nomoney
cls
echo.
echo You don't have enough money to buy.
echo.
pause
goto shop
:buynuke
cls
set buyhistory=+1 Nuke for 4000$
if '%money%' LSS '4000' goto nomoney
echo %buyhistory% >> buyhistory.txt
set /a money=%money% - 4000
set /a nuke=%nuke% + 1
echo +1 Nuke
goto shopa
:buyairstrike
cls
set buyhistory=+1 Airstrike for 3250$
if '%money%' LSS '3250' goto nomoney
echo %buyhistory% >> buyhistory.txt
set /a money=%money% - 3250
set /a airstrike=%airstrike% + 1
echo +1 Airstrike
goto shopa
:buymissles
cls
set buyhistory=+1 Missles for 2500
if '%money%' LSS '2500' goto nomoney
echo %buyhistory% >> buyhistory.txt
set /a money=%money% - 2500
set /a missiles=%missiles% + 1
echo +1 Missles
goto shopa
:buydefa
cls
set buyhistory=+500 DEF for 5000$
if '%money%' LSS '5000' goto nomoney
echo %buyhistory% >> buyhistory.txt
set /a money=%money% - 5000
set /a user=%user% + 500
echo +500 DEF
goto shopa
:buydefb
cls
set buyhistory=+1000 DEF for 8000$
if '%money%' LSS '8000' goto nomoney
echo %buyhistory% >> buyhistory.txt
set /a money=%money% - 8000
set /a user=%user% + 1000
echo +1000 DEF
goto shopa
:buymoney
cls
set buyhistory=+200% Money for ----$
if '%money%' LSS '99999999999' goto nomoney
echo %buyhistory% >> buyhistory.txt
set /a money=%money% - 9000
set /a moneyupg=%moneyupg% * 2
echo +1000 DEF
goto shopa
:nuke
cls
if '%nuke%'=='0' goto nonuke
echo.
echo %name% has fired a NUKE headed towards the %enemy%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %enemy% has lost 400 DEF!
echo.
pause
set /a money=%money% + 1500
set /a cpu=%cpu% - 400
set /a nuke=%nuke% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nonuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto gameplay
:airstrike
cls
if '%airstrike%'=='0' goto noairstrike
echo.
echo %name% has fired an airstrike on the %enemy%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %enemy% has lost 300 DEF!
echo.
pause
set /a money=%money% + 1500
set /a cpu=%cpu% - 300
set /a airstrike=%airstrike% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:noairstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto gameplay
:missiles
cls
if '%missiles%'=='0' goto nomissiles
echo.
echo %name% has fired multiple missiles headed towards the %enemy%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %enemy% has lost 200 DEF!
echo.
pause
set /a money=%money% + 1500
set /a cpu=%cpu% - 200
set /a missiles=%missiles% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:nomissiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto gameplay
:surrender
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
pause
:end
cls
echo.
echo "We may have lost the war, but we still have our dignity..."
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto end
goto players
:win
set winscore=1
cls
echo.
echo You have won Total War!!!
echo.
pause
:win2
cls
echo.
echo You have won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto win2
goto players
:donothing
set /a money=%money% + 1500
goto cpu1
:cpu1
cls
set /a cpucount=%cpucount% + 1
if '%cpucount%'=='10' goto cpu2
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo Select your option:/
timeout 1 /nobreak >nul
timeout 1 /nobreak >nul
timeout 1 /nobreak >nul
timeout 1 /nobreak >nul
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo Select your option:-
timeout 1 /nobreak >nul
timeout 1 /nobreak >nul
timeout 1 /nobreak >nul
timeout 1 /nobreak >nul
cls
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo Select your option:\
timeout 1 /nobreak >nul
timeout 1 /nobreak >nul
timeout 1 /nobreak >nul
timeout 1 /nobreak >nul
goto cpu1
:cpu2
cls
set /a choice=%random% %%7
if '%choice%'=='0' goto cpu2
if '%choice%'=='4' goto cpu2
if '%choice%'=='5' goto cpu2
if '%choice%'=='6' goto cpu2
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo My turn.
echo                                                               %country%: %user% DEF
echo Options:
echo                                                               %enemy%: %cpu% DEF
echo 1. Fire NUKE x %cpunuke%
echo.
echo 2. Fire Airstrike x %cpuairstrike%
echo.
echo 3. Fire Missiles x %cpumissiles%
echo.
echo 4. Go to shop
echo ______________________________________________________________________________
echo.
echo 5. Surrender
echo.
echo 6. Do nothing
echo.
echo Select your option:%choice%
timeout 2 /nobreak >nul
if '%choice%'=='1' goto cpunuke
if '%choice%'=='2' goto cpuairstrike
if '%choice%'=='3' goto cpumissiles
if '%choice%'=='6' goto gameplay
:cpunuke
cls
if '%cpunuke%'=='0' goto nocpunuke
echo.
echo I have fired a NUKE headed towards the %country%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %country% has lost 400 DEF!
echo.
timeout 2 /nobreak >nul
set /a user=%user% - 400
set cpunuke=0
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpunuke
echo.
echo I can't use a nuke since I don't have any more left!
echo.
timeout 2 /nobreak >nul
set cpucount=0
goto cpu1
:cpuairstrike
cls
if '%cpuairstrike%'=='0' goto nocpuairstrike
echo.
echo I have fired an airstrike on the %country%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %country% has lost 300 DEF!
echo.
timeout 2 /nobreak >nul
set /a user=%user% - 300
set /a cpuairstrike=%cpuairstrike% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpuairstrike
echo.
echo I can't use an airstrike since I don't have any more left!
echo.
timeout 2 /nobreak >nul
set cpucount=0
goto cpu1
:cpumissiles
cls
if '%cpumissiles%'=='0' goto nocpumissiles
echo.
echo I have fired multiple missiles headed towards the %country%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %country% has lost 200 DEF!
echo.
timeout 2 /nobreak >nul
set /a user=%user% - 200
set /a cpumissiles=%cpumissiles% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpumissiles
echo.
echo I can't use missiles since I don't have any more left!
echo.
timeout 2 /nobreak >nul
set cpucount=0
goto cpu1
:cpuwin
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
pause
:cpuwin2
cls
echo.
echo It was a long battle today. I have emerged victorious, even though you tried
echo very well.
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto cpuwin2
goto players
:p1name
cls
set p1name=
echo.
set /p p1name=Player 1, please type in your name (One word):
if '%p1name%'=='' goto p1name
:p2name
cls
set p2name=
echo.
set /p p2name=Player 2, please type in your name (One word):
if '%p2name%'=='%p1name%' goto p2name
if '%p2name%'=='' goto p2name
rem Easter Egg:
if '%p1name%'=='Vincent' goto p1win
if '%p2name%'=='Vincent' goto p2win
if '%p1name%'=='Heacien' goto p1win
if '%p2name%'=='Heacien' goto p2win
:p1country
cls
set p1country=
echo.
echo Welcome %p1name%!
echo.
set /p p1country=Choose your country; USA, Russia, or Canada:
if '%p1country%'=='usa' goto p1country1
if '%p1country%'=='USA' goto p1country1
if '%p1country%'=='Usa' goto p1country1
if '%p1country%'=='Russia' goto p1country2
if '%p1country%'=='russia' goto p1country2
if '%p1country%'=='canada' goto p1country3
if '%p1country%'=='Canada' goto p1country3
goto p1country
:p1country1
set p1country=USA
goto p2country
:p1country2
set p1country=Russia
goto p2country
:p1country3
set p1country=Canada
:p2country
cls
set p2country=
echo.
echo Welcome %p2name%!
echo.
set /p p2country=Choose your country; USA, Russia, or Canada:
if '%p2country%'=='%p1country%' goto na
if '%p2country%'=='usa' goto p2country1
if '%p2country%'=='USA' goto p2country1
if '%p2country%'=='Usa' goto p2country1
if '%p2country%'=='Russia' goto p2country2
if '%p2country%'=='russia' goto p2country2
if '%p2country%'=='canada' goto p2country3
if '%p2country%'=='Canada' goto p2country3
goto p2country
:na
cls
echo.
echo You can't choose %p1country% because %p1name% has already chosen it.
pause >nul
goto p2country
:p2country1
set p2country=USA
goto begin2
:p2country2
set p2country=Russia
goto begin2
:p2country3
set p2country=Canada
:begin2
set p1health=1000
set p2health=1000
set p1nuke=1
set p1airstrike=2
set p1missiles=3
set p2nuke=1
set p2airstrike=2
set p2missiles=3
:p1gameplay
cls
set move=
set choice=
echo \---------------------------------------------------\
echo  \ %version%     Enter The Nuke                    \
echo   \---------------------------------------------------\ 
echo %p1name%, your turn.
echo                                                               %p1country%: %p1health% DEF
echo Options:
echo                                                               %p2country%: %p2health% DEF
echo 1. Fire NUKE x %p1nuke%
echo.
echo 2. Fire Airstrike x %p1airstrike%
echo.
echo 3. Fire Missiles x %p1missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p1nuke
if '%move%'=='2' goto p1airstrike
if '%move%'=='3' goto p1missiles
if '%move%'=='4' goto p1surrender
if '%move%'=='5' goto p2gameplay
goto p1gameplay
:p1nuke
cls
if '%p1nuke%'=='0' goto nop1nuke
echo.
echo %p1name% has fired a NUKE headed towards %p2country%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %p2country% has lost 400 DEF!
echo.
pause
set /a p2health=%p2health% - 400
set p1nuke=0
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1nuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto p1gameplay
:p1airstrike
cls
if '%p1airstrike%'=='0' goto nop1airstrike
echo.
echo %p1name% has fired an airstrike on %p2country%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %p2country% has lost 300 DEF!
echo.
pause
set /a p2health=%p2health% - 300
set /a p1airstrike=%p1airstrike% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p1gameplay
:p1missiles
cls
if '%p1missiles%'=='0' goto nop1missiles
echo.
echo %p1name% has fired multiple missiles headed towards %p2country%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %p2country% has lost 200 DEF!
echo.
pause
set /a p2health=%p2health% - 200
set /a p1missiles=%p1missiles% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p1gameplay
:p1surrender
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p1surrender2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1surrender2
goto players
:p1win
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p1win2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1win2
goto players
:p2gameplay
cls
set move=
set choice=
echo                                                               %version%
echo %p2name%, your turn.
echo                                                               %p2country%: %p2health% DEF
echo Options:
echo                                                               %p1country%: %p1health% DEF
echo 1. Fire NUKE x %p2nuke%
echo.
echo 2. Fire Airstrike x %p2airstrike%
echo.
echo 3. Fire Missiles x %p2missiles%
echo.
echo 4. Surrender
echo.
echo 5. Do nothing
echo.
set /p move=Select your option:
if '%move%'=='1' goto p2nuke
if '%move%'=='2' goto p2airstrike
if '%move%'=='3' goto p2missiles
if '%move%'=='4' goto p2surrender
if '%move%'=='5' goto p1gameplay
goto p2gameplay
:p2nuke
cls
if '%p2nuke%'=='0' goto nop2nuke
echo.
echo %p2name% has fired a NUKE headed towards %p1country%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %p1country% has lost 400 DEF!
echo.
pause
set /a p1health=%p1health% - 400
set p2nuke=0
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2nuke
echo.
echo You can't use a nuke since you don't have any more left!
echo.
pause
goto p2gameplay
:p2airstrike
cls
if '%p2airstrike%'=='0' goto nop2airstrike
echo.
echo %p2name% has fired an airstrike on %p1country%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %p1country% has lost 300 DEF!
echo.
pause
set /a p1health=%p1health% - 300
set /a p2airstrike=%p2airstrike% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2airstrike
echo.
echo You can't use an airstrike since you don't have any more left!
echo.
pause
goto p2gameplay
:p2missiles
cls
if '%p2missiles%'=='0' goto nop2missiles
echo.
echo %p2name% has fired multiple missiles headed towards %p1country%!
echo.
timeout 2 /nobreak >nul
echo Hit!
echo.
echo %p1country% has lost 200 DEF!
echo.
pause
set /a p1health=%p1health% - 200
set /a p2missiles=%p2missiles% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2missiles
echo.
echo You can't use missiles since you don't have any more left!
echo.
pause
goto p2gameplay
:p2surrender
cls
echo.
echo %p1name% has won Total War!!!
echo.
pause
:p2surrender2
cls
echo.
echo %p1name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2surrender2
goto players
:p2win
cls
echo.
echo %p2name% has won Total War!!!
echo.
pause
:p2win2
cls
echo.
echo %p2name% has won Total War!!!
echo.
set /p replay=Type anything to replay the game. Type 'x' to exit:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2win2
goto players
:changelog
color f9
:site_1
cls
echo Changelog:
echo  V 2.3.5
echo   -Bugs Fixed
echo   -Chrash fixed
echo   -Navigation Update
echo.
echo  V 2.3.4
echo   -Bug Client 
echo   -Bug at Country-Selection
echo.
echo  V 2.3.3
echo   -Bugfix
echo   -Switzerland added
echo.
echo  V 2.3.2 # Bigger Update!
echo   -Japan, France and Turkey added
echo   -Gameplay fix
echo   -Overlay edited
echo   -Money patch 2.0
echo   -Bugfix
echo.
echo (Page 1/2)
choice /c NE /N /M "N - Next Page / E - Exit"
if %errorlevel%==1 goto :site_2
if %errorlevel%==2 goto :start
:site_2
cls
echo Changelog:
echo  V 2.3.1 # Money Update
echo   -Big money patch 1.0
echo   -Big difficulty patch
echo   -Scoresystem added
echo.
echo  V 2.2.1 # Suggestion update
echo   -Suggestionsystem-Upgrade
echo   -Scoresystem in work
echo.
echo  V 2.2.0 # Overlay update
echo   -Big overlay change
echo   -New Easter Egg
echo.
echo  V 2.1.6
echo   -Error-Freeze fixed
echo   -Some design changes
echo.
echo  V 2.1.5
echo   -Changelog complet fixed
echo   -Some design changes
echo.
echo (Page 2/3)
choice /c NME /N /M "N - Next Page / M - Previous Page / E - Exit"
if %errorlevel%==1 goto :site_3
if %errorlevel%==2 goto :site_1
if %errorlevel%==3 goto :start
:site_3
cls
echo Changelog:
echo  V 2.1.4
echo   -Changelog bugfix
echo.
echo  V 2.1.3
echo   -Changelog added
echo.
echo  V 2.1.2
echo   -Overkill chrash fixed
echo.
echo  V 2.0.0 - V 2.1.1
echo   -Shopsystem was added
echo.
echo  V 1.0
echo   -isn't my work - pls check out Vincent Allain alias BATCHFILEMASTER
echo.
echo (Page 3/3)
choice /c EM /N /M "M - Previous Page / E - Exit"
if %errorlevel%==1 goto :start
if %errorlevel%==2 goto :site_2
:abcdefg
color f9
cls
set /p Console=
if '%Console%'=='win' goto win
if '%Console%'=='changelog' goto changelog
if '%Console%'=='' goto abcdefg
:suggest
cls
del buyhistory.txt
color f9
rem :cheatsused
rem if '%cheats%'==1 (echo DESTRICTED for cheater) else (echo.)
rem if '%cheats%'==1 (goto cheatsused) else (echo.)
:score
cls
echo.
if '%difficulty%'=='noobmode' set difficulty=Noobmode
if '%difficulty%'=='0' set difficulty=Noobmode
if '%difficulty%'=='normal' set difficulty=Normal
if '%difficulty%'=='1' set difficulty=Normal
if '%difficulty%'=='hard' set difficulty=Hard
if '%difficulty%'=='2' set difficulty=Hard
if '%difficulty%'=='overkill' set difficulty=Overkill
if '%difficulty%'=='x' set difficulty=Overkill
if '%winscore%'=='1' (set winscore=won) else (set winscore=lost)
echo %date:~0% - %time:~0,8% - Player %name% has %winscore% as %country% against %enemy% in %difficulty%.
echo Look in youre score.txt for the score you have/had.
echo %date:~0% - %time:~0,8% - Player %name% has %winscore% as %country% against %enemy% in %difficulty%.>> score.txt
:suggesta
echo.
echo %version% 
echo special thanks to Vincent Allain for writing the base of the game.
echo ___________________________________________________________________
echo.
echo Any suggestions bevor you leave? ('x' to leave)
REM echo (You can write 'cl' to get to the changelog)
echo (Write 'score' to save youre score) - In work
echo ___________________________________________________________________
echo.
set /p endmenu=
REM if '%endmenu%'=='score' goto score
if '%endmenu%'=='cl' goto changelog
if '%endmenu%'=='changelog' goto changelog
