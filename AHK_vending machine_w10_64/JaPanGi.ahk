CoordMode,Pixel,Client

#NoTrayIcon
Menu, Tray, Icon, IMG\001.ico
; �� Ÿ��Ʋ
Gui, Add, Text, x12 y10 w163 h15 , ���� �ֽ��ϴ� (���� : ��)
; Coin Button
Gui, Add, Button, x12 y36 w57 h19 gins1 vA1, 100
Gui, Add, Button, x12 y64 w57 h19 gins2 vA2 , 500
Gui, Add, Button, x78 y36 w57 h19 gins3 vA3, 1000
Gui, Add, Button, x78 y64 w57 h19 gins4 vA4, 5000
Gui, Add, Button, x142 y36 w47 h48 gins5 vA5, 10000
; ��ǰ���� 4ea
Gui, Add, Button, x12 y93 w96 h28 gpay1, Coke
Gui, Add, Button, x12 y132 w96 h28 gpay2, Tissue
Gui, Add, Button, x12 y170 w96 h28 gpay3, Cookie
Gui, Add, Button, x12 y208 w96 h28 gpay4, Water
; ��ǰ ���� 4ea
Gui, Add, Text, x117 y103 w76 h18 +Center vB1, 1800��
Gui, Add, Text, x117 y142 w76 h18 +Center vB2, 500��
Gui, Add, Text, x117 y180 w76 h18 +Center vB3, 700��
Gui, Add, Text, x117 y218 w76 h18 +Center vB4, 1200��

; �ܾ� ǥ��
Gui, Add, Text, x31 y247 w134 h28, �ܾ� ǥ��
; �α� ǥ��
Gui, Add, Text, x31 y310 w134 h115 , �׷��� ?
Gui, Add, Text, x32 y279 w100 h20 +right vMoney, 10000
Gui, Add, Text, x142 y279 w30 h20 , ��
Gui, Add, Text, x32 y339 w130 h70 +Center vlog, -
;�׷� �ڽ�
Gui, Add, Button, x72 y408 w60 h20 gStop, Restart
Gui, Show, w202 h408, ���Ǳ�?
return

GuiClose:
ExitApp

Stop:
Reload
Return


Coin(a) ; ���ֱ� 100�� ~ 5000�� 
    {
    GuiControlGet, Money, 1:
    Money1 := Money + a
    GuiControl, 1:, Money, %Money1%
    log:= a "�� �߰� "
    GuiControl, 1:, log, %log%
    }
    return

pay_money(price,target) ; ���º��濡 ���� �α� ǥ��
{   
    GuiControlGet, Money, 1:
    minus1 := Money - Price
    if  ( minus1 > 0 )
    {
    Money1 := Money - price
    GuiControl, 1:, Money, %Money1%

    log:= target " ��(��) " price "���� `n`n �Ǹ� �߽��ϴ�. "
    GuiControl, 1:, log, %log%
    }
    else 
    {
    log:= "���� ���ڶ��ϴ� `n`n" minus1 "��" 
    GuiControl, 1:, log, %log%
    }
}

pay1: ; �̰� �Ϲ��Լ��� 1~4���� ������������..
    {
        pay_money(1800,"�ݶ�")
        return
    }
pay2:
    {
        pay_money(500,"Ƽ��")
        return
    }
pay3:
    {
        pay_money(700,"��Ű")
        return
    }
pay4:
    {
        pay_money(1200,"����")
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

