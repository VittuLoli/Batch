@echo off
setlocal enabledelayedexpansion
title Game Launcher
mode con cols=100 lines=29

:BootUp
color 0d
echo                                                 .-                                                 
echo                                               `omNs.                                               
echo                                              :dMMMMm:                                              
echo                               `/:-.`       `sNMMMMMMNo`      `.-://`                               
echo                              -dNhmmdy/.   .hMMMMysNMMMy`  `:sdmNdhMs`                              
echo                             .mMh ./yNMNh:.dMMMN+  +NMMMy`+dMMNy:``mMy                              
echo                             hMM+    -sNN+dMMMN:    /NMMMyyMNs-    oMM+                             
echo                ...````     .MMM/      ./sMMMN:      /MMMM+y-      :MMm    ```...---`               
echo                mMNNmdhys+:.:mNM/       :MMMM/        sMMMN`       :NNd-/oyhdmNMMMMM`               
echo                hMMMMMMMMMMMmhys/       hMMMy         `dMMMo      `+hdNMMMMMMMMMMMMN                
echo                sMMMMyshmNNMMMMMNh+.   `MMMM.          :MMMm   `/yNMMMMMNNdys++MMMMy                
echo                -MMMM+   `-/ohNMMMMNh/`:MMMy            mMMM..sNMMMMmyo:.     /MMMM:                
echo                 dMMMm        `-odMMMMm/MMM/            sMMM:MMMMdo-         `mMMMd                 
echo                 :MMMM+           `+dMM/MMM-            /MMM/Mmo.            oMMMM:                 
echo            -+oyhssMMMN-             .s:MMM.            :MMM-/              :MMMMosyso/-`           
echo        .+hNMMMNNNohMMMm.               dMM-            :MMd               :NMMMyyMMMMMMMdo.        
echo       -NNo/-``    `hMMMm.              +MM/            +MM/              :NMMMs.:----::/oNN.        
echo        mMy.        `sMMMm:              dMy            hMh              oMMMN+         `yMh        
echo        -NMNo`        /NMMNo`            .NN.          .Mm.            .hMMMd-         :dMN.        
echo         :mMMmo.   `.:/ohMMMd/            -Ny          hm-           `oNMMmyo+/-.    -yNMm-         
echo          .smhysoydNNmhs:-yNMMh:           -d/        +d-          .+mMMm+.:oydNNmhs+yhmh.          
echo         `-/ydNNMMds:``    .omMNd+.         .s:      /s.        `:sNMNy:`     `-+hNMMNmho:-``       
echo   :yhhdmmNMMMMdo-`          `:sdNmy/.       `:-    ::       `:odNdy/.           `.+hNMMMMNmmddh/   
echo   `:hNMMMMMMd:`                `./shhho/-`    ``  ``   `-:+syyo/.`                 `-dMMMMMMNy-    
echo     `-smMMMMNh/.                    `.-::/:-.      ``.----..`                    `-odNMMMMdo.      
echo        ./ymMMMMNdo:.`                     `.--`    `---.`                    `-/ydNMMMNds:`        
echo           .:sdmMMMMNdyo/:-..```````.--:++o/-`        `.:+o+/:--........-:/oydmNMMMNmh+-`           
echo              `.-+shdmNNMMNNmmmdddhhhyo+-.                `-:+shhhdddmmNNNNNNmddyo:-`               
echo                    `..-:://///::-..`                           `..--:::::--..`                     
pause >nul
color 0b
goto start1

:start1
cls
echo Enter a Number and press Number
echo:
echo 1) Browse Games
echo 2) Help (Unknown)
echo 3) Messaging
echo 4) Unknown
echo 5) Stupid Shit (Unknown)
set /p start1="Enter Number: "
if %start1%==1 (
goto BrowseGames
)
if %start1%==2 (
goto 
)
if %start1%==3 (
goto Messagingv2
)
if %start1%==4 (
goto 
)
if %start1%==5 (
goto 
)

:MessagingV2
start Messager.bat
goto start1


:Messaging
color 0b
cls
title InApp Messages
echo Type the context / title
set /p message=
cls
title InApp Messages: Context
echo Is this what you want for your context?
echo "%message%"
echo y/n
set /p messagecq=
if %messagecq%==y (
goto messageb
)
if %messagecq%==n (
goto Messaging
)
goto Messaging

:messageb
cls
title InApp Messages: Body
echo %message%
echo:
set /p messageba=
echo Is this what you want for your body of your text?
echo "%messageba%"
echo y/n
set /p messagebq=
if %messagebq%==y (
goto messagesent
)
if %messagebq%==n (
goto messageb
)
goto messageb

:messagesent
cls
echo Context:
echo %message%
echo:
echo Body:
echo %messageba%
echo:
echo Are the Context / body okay? (You will go back to the begin)
echo y/n
set /p messagesq=
if %messagebq%==y (
goto messagesf
)
if %messagebq%==n (
goto Messaging
)
goto messagesent

:messagesf
cls
echo Name     :   %username% >> "E:\Bat Working\Other Bat Testing\Important\Messages.txt"
echo Context  :   %message% >> "E:\Bat Working\Other Bat Testing\Important\Messages.txt"
echo Body     :   %messageba% >> "E:\Bat Working\Other Bat Testing\Important\Messages.txt"
echo Date     :   %date% >> "E:\Bat Working\Other Bat Testing\Important\Messages.txt"
echo Time     :  %time% >> "E:\Bat Working\Other Bat Testing\Important\Messages.txt"
echo: >> "E:\Bat Working\Other Bat Testing\Important\Messages.txt"
echo: >> "E:\Bat Working\Other Bat Testing\Important\Messages.txt"
cls
echo Message Sent Please dont send another one for ~5 minutes.
pause
goto start1

:BrowseGames
cls
Title Browsing Genre
cls
echo Enter a Number and press Number
echo:
echo 0) Everything
echo 1) Popular
echo 2) Unknown
echo 3) Unknown
echo 4) Unknown
echo 5) Stupid Shit
set /p browsegame="Enter Number: "
if %browsegame%==0 (
goto everything
)
if %browsegame%==1 (
goto Popular
)
if %browsegame%==2 (
goto BootUp
)
if %browsegame%==3 (
goto BootUp
)
if %browsegame%==4 (
goto BootUp
)
if %browsegame%==5 (
goto BootUp
)
goto BootUp

:Popular
Title Browsing Popular Games
cls
echo Enter a Number and press Number
echo:
echo 1) Minecraft Education Education
echo 2) Geometry Dash (GD)
echo 3) Unknown
echo 4) Unknown
echo 5) Unknown
set /p popularbrowsegame="Enter Number: "
if %popularbrowsegame%==0 goto BootUp
if %popularbrowsegame%==1 goto BootUp
if %popularbrowsegame%==2 goto BootUp
if %popularbrowsegame%==3 goto BootUp
if %popularbrowsegame%==4 goto BootUp
if %popularbrowsegame%==5 goto BootUp
goto BootUp

:Everything
Title Browsing Unsorted Games
cls
echo Due to the amount of games the games are inside a constantly updating text file at doucuments.
echo:
break> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 1)   Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 2)   Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 3)   Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 4)   Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 5)   Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 6)   Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 7)   Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 8)   Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 9)   Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 10)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 11)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 12)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 13)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 14)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 15)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 16)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 17)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 18)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 19)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 20)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 21)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 22)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 23)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 24)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 25)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 26)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 27)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 28)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 29)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 30)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 31)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 32)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 33)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 34)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 35)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 36)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 37)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 38)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 39)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
echo 40)  Unknown >> "E:\Bat Working\Other Bat Testing\Important\Game Selection.txt"
set /p everything="Enter Number: "

if %everything%==0 goto gameselected
if %everything%==1 goto game1
if %everything%==2 goto game2
if %everything%==3 goto game3
if %everything%==4 goto game4
if %everything%==5 goto game5
if %everything%==6 goto game6
if %everything%==7 goto game7
if %everything%==8 goto game8
if %everything%==9 goto game9
if %everything%==10 goto game10
if %everything%==11 goto game11
if %everything%==12 goto game12
if %everything%==13 goto game13
if %everything%==14 goto game14
if %everything%==15 goto game15
if %everything%==16 goto game16
if %everything%==17 goto game17
goto BootUp

:game1
goto gameselected
:game2
goto gameselected
:game3
goto gameselected
:game4
goto gameselected
:game5
goto gameselected
:game6
goto gameselected
:game7
goto gameselected
:game8
goto gameselected
:game9
goto gameselected
:game10
goto gameselected
:game11
goto gameselected
:game12
goto gameselected
:game13
goto gameselected
:game14
goto gameselected
:game15
goto gameselected
:game16
goto gameselected
:game17
goto gameselected
:game18
goto gameselected
:game19
goto gameselected
:game20
goto gameselected
:game21
goto gameselected
:game22
goto gameselected
:game23
goto gameselected
:game24
goto gameselected
:game25
goto gameselected
:game26
goto gameselected
:game27
goto gameselected
:game28
goto gameselected
:game29
goto gameselected
:game30
goto gameselected
:game31
goto gameselected
:game32
goto gameselected
:game33
goto gameselected
:game34
goto gameselected



:gameselected
cls
title You have selected a game.
echo Please wait while it is loading, it can take a few seconds to minutes depending on the computer /
echo if you have loaded it before.
echo:
pause
goto start1

:StupidShit
color 0a
mode 1000
cls
title Random stuff that looks sorta cool.
echo:
echo 1) Matix
echo 2)
echo 3)
echo 4)
echo 5) 
pause >nul
cls

