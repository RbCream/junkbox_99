CoordMode,Pixel,Client

#NoTrayIcon
Menu, Tray, Icon, IMG\001.ico
; 앱 타이틀
Gui, Add, Text, x12 y10 w163 h15 , 돈을 넣습니다 (단위 : 원)
; Coin Button
Gui, Add, Button, x12 y36 w57 h19 gins1 vA1, 100
Gui, Add, Button, x12 y64 w57 h19 gins2 vA2 , 500
Gui, Add, Button, x78 y36 w57 h19 gins3 vA3, 1000
Gui, Add, Button, x78 y64 w57 h19 gins4 vA4, 5000
Gui, Add, Button, x142 y36 w47 h48 gins5 vA5, 10000
; 상품진열 4ea
Gui, Add, Button, x12 y93 w96 h28 gpay1, Coke
Gui, Add, Button, x12 y132 w96 h28 gpay2, Tissue
Gui, Add, Button, x12 y170 w96 h28 gpay3, Cookie
Gui, Add, Button, x12 y208 w96 h28 gpay4, Water
; 상품 가격 4ea
Gui, Add, Text, x117 y103 w76 h18 +Center vB1, 1800원
Gui, Add, Text, x117 y142 w76 h18 +Center vB2, 500원
Gui, Add, Text, x117 y180 w76 h18 +Center vB3, 700원
Gui, Add, Text, x117 y218 w76 h18 +Center vB4, 1200원

; 잔액 표시
Gui, Add, Text, x31 y247 w134 h28, 잔액 표기
; 로그 표기
Gui, Add, Text, x31 y310 w134 h115 , 그래서 ?
Gui, Add, Text, x32 y279 w100 h20 +right vMoney, 10000
Gui, Add, Text, x142 y279 w30 h20 , 원
Gui, Add, Text, x32 y339 w130 h70 +Center vlog, -
;그룹 박스
Gui, Add, Button, x72 y408 w60 h20 gStop, Restart
Gui, Show, w202 h408, 자판기?
return

GuiClose:
ExitApp

Stop:
Reload
Return


Coin(a) ; 돈넣기 100원 ~ 5000원 
    {
    GuiControlGet, Money, 1:
    Money1 := Money + a
    GuiControl, 1:, Money, %Money1%
    log:= a "원 추가 "
    GuiControl, 1:, log, %log%
    }
    return

pay_money(price,target) ; 상태변경에 대한 로그 표기
{   
    GuiControlGet, Money, 1:
    minus1 := Money - Price
    if  ( minus1 > 0 )
    {
    Money1 := Money - price
    GuiControl, 1:, Money, %Money1%

    log:= target " 을(를) " price "원에 `n`n 판매 했습니다. "
    GuiControl, 1:, log, %log%
    }
    else 
    {
    log:= "돈이 모자랍니다 `n`n" minus1 "원" 
    GuiControl, 1:, log, %log%
    }
}

pay1: ; 이걸 일반함수로 1~4까지 묶을수없었나..
    {
        pay_money(1800,"콜라")
        return
    }
pay2:
    {
        pay_money(500,"티슈")
        return
    }
pay3:
    {
        pay_money(700,"쿠키")
        return
    }
pay4:
    {
        pay_money(1200,"생수")
        return
    }

ins1:
    {
    GuiControlGet, A1, 1:
    Coin(A1)
    return
    }
ins2:
    {
    GuiControlGet, A2, 1:
    Coin(A2)
    return
    }
ins3:
    {
    GuiControlGet, A3, 1:
    Coin(A3)
    return
    }
ins4:
    {
    GuiControlGet, A4, 1:
    Coin(A4)
    return
    }
ins5:
    {
    GuiControlGet, A5, 1:
    Coin(A5)
    return
    }

