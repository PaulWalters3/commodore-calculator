    1 rem *********************************
    2 rem **        Calculator           **
    3 rem **       Paul Walters          **
    4 rem **           1989              **
    5 rem *********************************
    6 rem
    8 print chr$ (14) : rem * switch to lower *
    9 print chr$ (8) : rem * disable commodore key *
   10 gosub 9000 : rem * title *
   11 gosub 2250 : rem * time *
   12 gosub 8000 : rem * screen *
  100 rem *******************************
  101 rem **          input            **
  102 rem *******************************
  103 rem
  110 get a$ : gosub 220 : if a$ = "" then 110
  112 dp = 0
  115 if (asc(a$) > 47 and asc(a$) < 58) or a$ = "." then gosub 300 : goto 115
  116 if (asc (a$) > 64 and asc (a$) < 71) and bs = 3 then gosub 300 : goto 115
  117 if a$ = "*" or a$ = "/" or a$ = "+" or a$ = "-" then goto 400
  119 if a$ = "(" then sv$ = a$ : gosub 500 : goto 110
  121 if a$ = ")" then gosub 450 : goto 110
  123 if a$ = "=" then gosub 415 : goto 110
  125 if a$ = " " then gosub 200 : goto 110
  127 if a$ = "s" then gosub 900 : gosub 350 : gosub 910 : goto 110
  129 if a$ = "p" and bs = 4 then gosub 1275 : goto 110
  131 if a$ = "^" and sf = 0 and bs = 4 then gosub 900 : gosub 1000 : goto 110
  133 if a$ = "^" and sf = 1 then gosub 900 : gosub 1100 : goto 110
  135 if a$ = "{f1}" then gosub 1150 : goto 110
  137 if a$ = "{f3}" and sf = 0 then gosub 900 : gosub 1200 : gosub 910 : goto 110
  139 if a$ = "{f3}" and sf = 1 then gosub 900 : gosub 1250 : goto 110
  141 if a$ = "{f5}" and sf = 0 then gosub 900 : gosub 1300 : gosub 910 : goto 110
  143 if a$ = "{f5}" and sf = 1 then gosub 900 : gosub 1350 : goto 110
  145 if a$ = "{f7}" and sf = 0 then gosub 900 : gosub 1400 : goto 110
  147 if a$ = "{f7}" and sf = 1 then gosub 900 : gosub 1450 : goto 110
  148 if bs <> 4 then 165
  149 if a$ = "{f2}" and sf = 0 then gosub 900 : gosub 1500 : goto 110
  151 if a$ = "{f2}" and sf = 1 then gosub 900 : gosub 1550 : gosub 910 : goto 110
  153 if a$ = "{f4}" and sf = 0 then gosub 900 : gosub 1600 : goto 110
  155 if a$ = "{f4}" and sf = 1 then gosub 900 : gosub 1650 : gosub 910 : goto 110
  157 if a$ = "{f6}" and sf = 0 then gosub 925 : gosub 1700 : goto 115
  159 if a$ = "{f6}" and sf = 1 then gosub 925 : gosub 1750 : goto 115
  161 if a$ = "{f8}" and sf = 0 then gosub 900 : gosub 1800 : goto 110
  163 if a$ = "{f8}" and sf = 1 then gosub 900 : gosub 1850 : gosub 910
  165 if a$ = "_" and sf = 0 and bs = 4 then gosub 800 : goto 110
  167 if a$ = "_" and sf = 1 and bs = 4 then gosub 925 : gosub 2300 : goto 115
  169 if a$ = "%" and bs = 4 then gosub 900 : gosub 875 : gosub 910 : goto 110
  171 if a$ = "m" or a$ = "r" or a$ = "x" then gosub 3000 : goto 110
  172 if a$ = "&" and bs = 4 then gosub 925 : gosub 1025 : gosub 910 : goto 110
  173 if a$ = "\" and bs = 4 then gosub 1175 : goto 110
  175 if a$ = "!" and bs = 4 then gosub 900 : gosub 850 : gosub 910 : goto 110
  177 if a$ = "t" and sf = 0 and bs = 4 then gosub900:gosub2210:gosub700:goto110
  180 if a$ = "l" then gosub 1900 : goto 110
  181 if a$ = "@" and sf = 0 then gosub 2600 : goto 110
  183 if a$ = "@" and bs = 4 and sf = 1 then gosub 2700 : goto 110
  185 if a$ = "n" and bs = 4 then gosub 2200 : gosub 910 : goto 110
  187 if a$=":"andsf=0 and fs=1 and bs=4 then gosub900:gosub2350:gosub910:goto110
  189 if a$=":"andsf=1 and fs=1 and bs=4 then gosub900:gosub2400:gosub910:goto110
  190 if a$ = chr$(19) and sf = 1 and bs=4 then gosub925:gosub2500:goto110
  191 if a$ = chr$(19) and sf = 0 and bs=4 then gosub925:gosub2550:goto110
  192 if a$ = "{down}" and sf = 0 and bs=4 then gosub900:xx=sv:gosub200:goto110
  193 if a$ = "{down}" and sf = 1 and bs = 4 then gosub 2950 : goto 110
  194 if a$ = "{rght}" and sf = 0 and bs=4 then gosub900:yy=sv:gosub200:goto110
  195 if a$ = "{rght}" and sf = 1 and bs = 4 then gosub 2900 : goto 110
  196 if a$ = chr$ (13) and xx=0 and yy=1 and bs = 4 then gosub 2975 : goto 110
  197 if a$ = "h" then gosub 2000 : goto 110
  198 if a$ = "q" then gosub 250
  199 goto 110
  200 rem *******************************
  201 rem **          clear            **
  202 rem *******************************
  203 rem
  205 s1=1 : s2=1 : sf=1 : hp=1 : d$="" : s1$(1)="" : s2$(1)=""
  207 gosub 1150 : gosub 1175 : gosub 700 : return
  220 rem *******************************
  221 rem **           time            **
  222 rem *******************************
  223 rem
  225 print"{home}{down}{blk}";spc(26);left$(ti$,2);":";mid$(ti$,3,2);":";right$(ti$,2)
  227 return
  250 rem *******************************
  251 rem **      quit to loadstar     **
  252 rem *******************************
  253 rem
  254 print"{home}{down}{down}{down}{down}{down}{down}{blk}{rght}{rght}{rght}{rvon}{CBM-A}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}"
  255 print"{rght}{rght}{rght}{rvon}{SHIFT--}{rvof}             {rvon}{SHIFT--}"
  256 print"{rght}{rght}{rght}{rvon}{SHIFT--}{rvof} Quit (y/n)? {rvon}{SHIFT--}{rvof}"
  257 print"{rght}{rght}{rght}{rvon}{SHIFT--}{rvof}             {rvon}{SHIFT--}"
  258 print"{rght}{rght}{rght}{rvon}{CBM-Z}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-X}"
  260 get a$ : if a$ = "" then 260
  262 if a$ = "y" then 270
  264 if a$ = "n" then gosub 8000 :return
  265 goto 260
  270 open 15,8,15,"r0:hello connect=hello connect" : input#15, er% : close 15
  272 if er % <> 63 then 280
  273 print"{clr}{down}{down}{rvon}{blu}Returning"
  274 load "hello connect",8
  275 end
  280 rem *******************************
  281 rem **    wait for drive error   **
  282 rem *******************************
  283 rem
  284 print"{home}{down}{down}{down}{down}{down}{down}{blk}{rght}{rght}{rght}{rvon}{CBM-A}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}"
  285 print"{rght}{rght}{rght}{rvon}{SHIFT--}{rvof}                      {rvon}{SHIFT--}{rvof}"
  287 print"{rght}{rght}{rght}{rvon}{SHIFT--}{rvof} Disk Drive Error     {rvon}{SHIFT--}{rvof}"
  288 print"{rght}{rght}{rght}{rvon}{SHIFT--}{rvof} Hit a key when ready {rvon}{SHIFT--}{rvof}"
  289 print"{rght}{rght}{rght}{rvon}{SHIFT--}{rvof}                      {rvon}{SHIFT--}{rvof}"
  290 print"{rght}{rght}{rght}{rvon}{CBM-Z}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-X}"
  292 get a$ : if a$ = "" then 292
  295 goto 250
  300 rem *******************************
  301 rem **      read in number       **
  302 rem *******************************
  303 rem
  305 if a$ = "." and bs = 4 then b$ = " 0." : dp = 1 : goto 310
  306 if a$ = "S" then b$ = " " :goto 310
  307 b$ = " " : d$ = b$ : gosub 700 : gosub 710 : goto 314
  310 d$ = b$ : gosub 700 : gosub 710
  312 get a$ : gosub 220 : if a$ = "" then 312
  314 if a$ = chr$ (20) then b$ = " " : gosub 700 : goto 312
  315 if a$ = " " then return
  316 if asc (a$) > 64 and asc (a$) < 71 and bs = 3 then goto 330
  318 if a$ = "." and (dp = 1 or bs <> 4) then goto 312
  320 if a$ = "." then dp = 1 : goto 330
  322 if (asc (a$) < 48 or asc (a$) > 57) then goto 335
  325 if bs = 1 and val (a$) > 1 then goto 312
  327 if bs = 2 and val (a$) > 7 then goto 312
  330 b$ = b$ + a$ : d$ = b$ : if len (b$) > 10 and dp = 0 then goto 950
  331 if len (b$) > 11 and dp = 1 then goto 950
  332 gosub 710 : goto 312
  335 if bs <> 4 then gosub 375
  337 sv$ = b$ : gosub 530 : return
  350 rem *******************************
  351 rem **      plus / negative      **
  352 rem *******************************
  353 rem
  355 sv = -sv : return
  375 rem *******************************
  376 rem **      base conversion      **
  377 rem *******************************
  378 rem
  380 if len (b$) = 10 or len (b$) = 9 and bs = 3 then goto 475
  381 i3 = 0 : i = len (b$) : for i1 = 2 to i
  382 if asc (mid$ (b$,i1,1)) > 64 and bs = 3 then gosub 390 : goto 386
  384 i2 = val (mid$ (b$,i1,1))
  386 i3 = (i2 * sb(bs)^(i-i1)) + i3 : next : b$ = str$ (i3)
  388 if ls = 1 then goto 485
  389 return
  390 if mid$ (b$,i1,1) = "a" then i2 = 10 : return
  391 if mid$ (b$,i1,1) = "b" then i2 = 11 : return
  392 if mid$ (b$,i1,1) = "c" then i2 = 12 : return
  393 if mid$ (b$,i1,1) = "d" then i2 = 13 : return
  394 if mid$ (b$,i1,1) = "e" then i2 = 14 : return
  395 if mid$ (b$,i1,1) = "f" then i2 = 15 : return
  396 return
  400 rem *******************************
  401 rem **      make calculation     **
  402 rem *******************************
  403 rem
  405 gosub 600 : rem * get precedence *
  406 if pr = -1 then goto 110
  407 gosub 650 : rem * calculate *
  410 goto 110
  415 rem *******************************
  416 rem **           equal           **
  417 rem *******************************
  418 rem
  419 if s2 = 1 then return
  420 gosub 570 : n1 = val (sv$) : if s2 = 1 then goto 910
  422 gosub 570 : n2 = val (sv$)
  424 gosub 550 : o1$ = sv$ : if o1$ = "(" then 424
  425 if o1$ = "*" and n1 = 0 or n2 > -1 and n2 < 1 then goto 427
  426 if o1$ = "*" and m1 / abs (n2) < abs (n1) then goto 950
  427 if o1$ = "*" then sv = n2 * n1 : goto 434
  428 if o1$ = "/" and n1 = 0 then goto 950
  429 if o1$ = "/" then sv = n2 / n1 : goto 434
  430 if o1$ = "+" and m1 - abs (n2) < abs (n1) then goto 950
  431 if o1$ = "+" then sv = n2 + n1 : goto 434
  432 if o1$ = "-" and m1 - abs (n2) < abs (n1) then goto 950
  433 if o1$ = "-" then sv = n2 - n1
  434 if s2 > 1 then sv$ = str$ (sv) : gosub 530 : goto 419
  436 goto 910
  450 rem *******************************
  451 rem **     right parenthesis     **
  452 rem *******************************
  453 rem
  455 gosub 550 : o1$ = sv$
  456 if o1$ = "(" then return
  457 if s1 = 1 then return
  458 gosub 570 : n1 = val (sv$)
  460 gosub 570 : n2 = val (sv$)
  461 if o1$ = "*" and n1 = 0 or n2 > -1 and n2 < 0 then goto 463
  462 if o1$ = "*" and m1 / abs (n2) < abs (n1) then goto 950
  463 if o1$ = "*" then sv = n2 * n1 : goto 470
  464 if o1$ = "/" and n1 = 0 then goto 950
  465 if o1$ = "/" then sv = n2 / n1 : goto 470
  466 if o1$ = "+" and m1 - abs (n2) < abs (n1) then goto 950
  467 if o1$ = "+" then sv = n2 + n1 : goto 470
  468 if o1$ = "-" and m1 - abs (n2) < abs (n1) then goto 950
  469 if o1$ = "-" then sv = n2 - n1
  470 gosub 910 : goto 455
  475 rem *******************************
  476 rem **    check for neg base     **
  477 rem *******************************
  478 rem
  480 if bs = 3 then b$ = " " + right$ (b$,7) : ls = 1 : goto 380
  481 b$ = " " + right$ (b$,8) : ls = 1 : goto 380
  485 ls = 0
  487 if bs = 1 then b$ = str$ (-(255-val(b$)+1)) : return
  489 if bs = 2 then b$ = str$ (-(16777215-val(b$)+1)) : return
  491 if bs = 3 then b$ = str$ (-(268435455-val(b$)+1)) : return
  493 return
  500 rem *******************************
  501 rem **  push operator to stack   **
  502 rem *******************************
  503 rem
  505 if s1 = 50 then goto 950
  507 s1$ (s1) = sv$
  509 s1 = s1 + 1
  510 return
  530 rem *******************************
  531 rem **   push operand to stack   **
  532 rem *******************************
  533 rem
  535 if s2 = 50 then goto 950
  537 s2$ (s2) =sv$
  539 s2 = s2 +1
  540 return
  550 rem *******************************
  551 rem **  pop from operator stack  **
  552 rem *******************************
  553 rem
  555 if s1 = 1 then goto 950
  557 s1 = s1 - 1
  559 sv$ = s1$ (s1)
  560 return
  570 rem *******************************
  571 rem **  pop from operand stack   **
  572 rem *******************************
  573 rem
  575 if s2 = 1 then goto 950
  577 s2 = s2 - 1
  579 sv$ = s2$ (s2)
  580 return
  600 rem *******************************
  601 rem **        precedence         **
  602 rem *******************************
  603 rem
  605 pr = 0
  607 if s1 = 1  then sv$ = a$ : gosub 500 : pr = -1 : return
  608 gosub 550 : o1$ = sv$ : o2$ = a$
  609 if (o1$ = "*" or o1$ = "/") then pr = 1
  610 if (o1$ = "+" or o1$ = "-") and (o2$ = "+" or o2$ = "-") then pr = 1
  612 if (o1$ = "+" or o1$ = "-") and (o2$ = "*" or o2$ = "/") then pr = 0
  613 if o1$ = "(" then pr = 0
  615 return
  650 rem *******************************
  651 rem **        calculate          **
  652 rem *******************************
  653 rem
  655 if pr = 0 then sv$ = o1$ : gosub 500 : sv$ = o2$ : gosub 500 : return
  657 gosub 570 : n1 = val (sv$)
  658 gosub 570 : n2 = val (sv$)
  659 if o1$ = "*" and n1 = 0 or n2 > -1 and n2 < 1 then goto 661
  660 if o1$ = "*" and m1 / abs (n2) < abs(n1) then goto 950
  661 if o1$ = "*" then sv = n2 * n1 : goto 670
  662 if o1$ = "/" and n1 = 0 then goto 950
  663 if o1$ = "/" then sv = n2 / n1 : goto 670
  664 if o1$ = "+" and m1 - abs (n2) < abs (n1) then goto 950
  665 if o1$ = "+" then sv = n2 + n1 : goto 670
  666 if o1$ = "-" and m1 - abs (n2) < abs (n1) then goto 950
  667 if o1$ = "-" then sv = n2 - n1
  670 gosub 910 : sv$ =o2$ : goto 500
  700 rem *******************************
  701 rem **       erase display       **
  702 rem *******************************
  703 rem
  705 print "{home}{down}{down}{rght}{rght}{rght}{red}          0.{rght}   "
  707 return
  710 rem *******************************
  711 rem **          display          **
  712 rem *******************************
  713 rem
  714 if ds = 0 or bs <> 4  then goto 719
  715 if fs = 1 and len (d$) < 5 then 719
  716 if fs = 1 and mid$ (d$, len (d$) - 3, 1) <> "e" then goto 719
  717 e$ = right$ (d$,3) : print"{home}{down}{down}{red}";spc(16); e$ : d$ = left$ (d$,len (d$) - 4)
  719 print"{home}{down}{down}{red}"; spc(15-len(d$)); d$ : return
  720 rem *******************************
  721 rem **        fixed decimal      **
  722 rem *******************************
  723 rem
  724 if val (d$) > mx or val (d$) < mn then return
  725 if fp = 0 then d$ = str$ (int (val (d$))) + "." : return
  726 if fp = 1 and m1 / 10 < abs (val (d$)) then return
  727 if fp = 1 then d$ = str$ ((int ((val(d$)+.05)*10))/10) : return
  728 if fp = 2 and m1 / 100 < abs (val (d$)) then return
  729 if fp = 2 then d$ = str$ ((int ((val(d$)+.005)*100))/100) : return
  730 if fp = 3 and m1 / 1000 < abs (val (d$)) then return
  731 if fp = 3 then d$ = str$ ((int ((val(d$)+.0005)*1000))/1000) : return
  732 if fp = 4 and m1 / 10000 < abs (val (d$)) then return
  733 if fp = 4 then d$ = str$ ((int ((val(d$)+.00005)*10000))/10000) : return
  734 if fp = 5 and m1 / 100000 < abs (val (d$)) then return
  735 if fp = 5 then d$ = str$ ((int ((val(d$)+.000005)*100000))/100000):return
  736 if fp = 6 and m1 / 1000000 < abs (val (d$)) then return
  737 if fp = 6 then d$ = str$ ((int ((val(d$)+.0000005)*1000000))/ 1000000)
  738 if fp = 7 and m1 / 10000000 < abs (val (d$)) then return
  739 if fp = 7 then d$ = str$ ((int ((val(d$)+.00000005)*10000000))/ 10000000)
  740 return
  750 rem *******************************
  751 rem **       wait for key        **
  752 rem *******************************
  753 rem
  755 get a$ : if a$ = "" then 755
  757 if a$ = " " then s1 = 1 :  s2 = 1 :  gosub 700 : return
  760 goto 755
  800 rem *******************************
  801 rem **        deg-rad-grad       **
  802 rem *******************************
  803 rem
  805 dg = dg + 1 : if dg > 3 then dg = 1
  806 print "{home}{down}{down}{down}{down}{down}{down}{down}{rght}{rght}{blu}"; dg$ (dg)
  807 if s2 = 1 then return
  809 gosub 900
  811 if dg = 1 then sv = sv / 200 * 180 : goto 910
  813 if dg = 2 then sv = sv / 180 * ~ : goto 910
  815 if dg = 3 then sv = sv / ~ * 200 : goto 910
  850 rem *******************************
  851 rem **         factorial         **
  852 rem *******************************
  853 rem
  855 if sv = 0 or sv = 1 then sv = 1 : return
  857 if sv > 32 or sv < 0 then goto 950
  859 for i = sv-1 to 1 step -1 : sv = sv * i : next i : return
  875 rem *******************************
  876 rem **         percent           **
  877 rem *******************************
  878 rem
  880 sv = sv / 100 : return
  900 rem *******************************
  901 rem **        function call      **
  902 rem *******************************
  903 rem
  905 gosub 570 : sv = val (sv$) : return
  910 sv$ = str$ (sv) : gosub 530 : d$ = sv$ : gosub 720
  912 if bs <> 4 then gosub 4000 : goto 915
  913 if er = 1 then er = 0 : goto 950
  914 if fs > 1 then gosub 2720
  915 gosub 700 : ds = 1 : gosub 710 : ds = 0 : if sf = 1 then gosub 1150
  917 return
  925 rem *******************************
  926 rem **   two variable function   **
  927 rem *******************************
  928 rem
  930 gosub 900 : n1 = sv : a$ = "S" : gosub 300
  932 if a$ = " " then goto 200
  934 gosub 900 : n2 = sv
  935 if a$ = "s" then n2 = -n2: a$ = "S"
  936 return
  950 rem *******************************
  951 rem **     computation error     **
  952 rem *******************************
  953 rem
  955 d$ = "ERROR" : gosub 700 : gosub 710 : gosub 750 : goto 200
 1000 rem ******************************
 1001 rem **           x^2            **
 1002 rem ******************************
 1003 rem
 1005 if abs (sv) > sqr (m1) then goto 950
 1007 sv = sv ^ 2 : goto 910
 1025 rem ******************************
 1026 rem **          mod             **
 1027 rem ******************************
 1028 rem
 1030 if n2 = 0 then goto 950
 1032 n3 = int (n1/n2) : sv = -(n2*n3-n1) : return
 1100 rem ******************************
 1101 rem **           1/x            **
 1102 rem ******************************
 1103 rem
 1105 if sv = 0 then goto 950
 1107 sv = 1 / sv : goto 910
 1150 rem ******************************
 1151 rem **        2nd function      **
 1152 rem ******************************
 1153 rem
 1155 sf = abs (sf - 1)
 1157 print "{home}{down}{down}{down}{down}{down}{rght}{rght}{blu}"; sf$ (sf)
 1159 return
 1175 rem ******************************
 1176 rem **           hyp            **
 1177 rem ******************************
 1178 rem
 1180 hp = abs (hp - 1)
 1182 print "{home}{down}{down}{down}{down}{down}{down}{rght}{rght}{blu}"; hp$ (hp)
 1185 return
 1200 rem ******************************
 1201 rem **           sin            **
 1202 rem ******************************
 1203 rem
 1205 if hp = 1 then 1220
 1207 if dg = 1 and abs (sv) >= (1e+10) then goto 950
 1208 if dg = 1 then sv = sv / 180 * ~ : goto 1212
 1209 if dg = 3 and abs (sv) >= (10/9 * 10^10) then goto 950
 1210 if dg = 3 then sv = sv / 200 * ~ : goto 1212
 1211 if abs (sv) >= (~/180 * 10^10) then goto 950
 1212 sv = sin (sv) : return
 1220 rem ******************************
 1221 rem **         hyp sin          **
 1222 rem ******************************
 1223 rem
 1225 if abs (sv) > 88 then goto 950
 1227 sv = (exp (sv) - exp (-sv)) / 2 : gosub 1175 : return
 1235 rem ******************************
 1236 rem **       arc hyp sin        **
 1237 rem ******************************
 1238 rem
 1240 a = sv + sqr (sv * sv + 1) : if a < 0 then ng = 1 : a = -a
 1241 if a = 0 then sv = a : goto 1245
 1242 sv = log (a) : gosub 1175 : goto 910
 1245 ng = 0 : gosub 1175 : goto 910
 1250 rem ******************************
 1251 rem **         arc sin          **
 1252 rem ******************************
 1253 rem
 1255 if hp = 1 then 1235
 1256 if sv < -1 or sv > 1 then goto 950
 1257 a = -sv * sv + 1 : if a < 0 then ng = 1 : a = abs (a)
 1258 if a = 0 then goto 1264
 1259 sv = atn (sv / sqr (a))
 1261 if dg = 1 then sv = sv * 180 / ~
 1263 if dg = 3 then sv = sv * 200 / ~
 1264 if ng = 1 then ng = 0 : sv = -sv
 1265 goto 910
 1275 rem ******************************
 1276 rem **            pi            **
 1277 rem ******************************
 1278 rem
 1280 sv = ~ : goto 910
 1300 rem ******************************
 1301 rem **           cos            **
 1302 rem ******************************
 1303 rem
 1305 if hp = 1 then 1320
 1306 if dg = 1 and abs (sv) >= (1e+10) then goto 950
 1307 if dg = 1 then sv = sv / 180 * ~ : goto 1311
 1308 if dg = 3 and abs (sv) >= (10/9*10^10) then goto 950
 1309 if dg = 3 then sv = sv / 200 * ~ : goto 1311
 1310 if abs (sv) >= (~/180*10^10) then goto 950
 1311 sv = cos (sv) : return
 1320 rem ******************************
 1321 rem **         hyp cos          **
 1322 rem ******************************
 1323 rem
 1325 if abs (sv) > 88 then goto 950
 1327 sv = (exp (sv) + exp (-sv))/2 : gosub 1175 : return
 1350 rem ******************************
 1351 rem **          arc cos         **
 1352 rem ******************************
 1353 rem
 1355 if hp = 1 then 1375
 1356 if sv < -1 or sv > 1 then goto 950
 1357 a = -sv * sv + 1 : if a < 0 then ng = 1 : a = abs (a)
 1358 if a = 0 then sv = -atn(0)+~/2 : goto 1364
 1359 sv = -atn (sv / sqr (a)) + ~/2
 1361 if dg = 1 then sv = sv * 180 /~
 1363 if dg = 3 then sv = sv * 200 /~
 1364 if ng = 1 then ng = 0 : sv = -sv
 1365 goto 910
 1375 rem ******************************
 1376 rem **        arc hyp cos       **
 1377 rem ******************************
 1378 rem
 1379 if sv < 1 then goto 950
 1380 a = sv * sv - 1 : if a < 0 then goto 950
 1382 a = sv + sqr (a) :if a <= 0 then goto 950
 1384 sv = log (a) : gosub 1175 : goto 910
 1400 rem ******************************
 1401 rem **           tan            **
 1402 rem ******************************
 1403 rem
 1405 if hp = 1 then 1420
 1406 if dg = 1 and abs (sv) >= (1e+10) then goto 950
 1407 if dg = 1 then sv = sv / 180 * ~ : goto 1411
 1408 if dg = 3 and abs (sv) >= (10/9*10^10) then goto 950
 1409 if dg = 3 then sv = sv / 200 * ~ : goto 1411
 1410 if abs (sv) >= (~/180*10^10) then goto 950
 1411 if sv=~/2 or sv=-(~/2) then goto 950
 1412 sv = tan (sv) : goto 910
 1420 rem ******************************
 1421 rem **          hyp tan         **
 1422 rem ******************************
 1423 rem
 1425 if abs (sv) > 88 then goto 950
 1427 sv = exp (-sv) / (exp (sv) + exp (-sv)) * 2 + 1 : gosub 1175 : goto 910
 1450 rem ******************************
 1451 rem **          arc tan         **
 1452 rem ******************************
 1453 rem
 1455 if hp = 1 then 1470
 1457 sv = atn (sv)
 1459 if dg = 1 then sv = sv * 180 / ~
 1461 if dg = 3 then sv = sv * 200 / ~
 1462 goto 910
 1470 rem ******************************
 1471 rem **       arc hyp tan        **
 1472 rem ******************************
 1473 rem
 1475 if abs (sv) >= 1 then goto 950
 1477 a = (1+sv)/(1-sv):if a <= 0 then goto 950
 1479 sv = log (a) / 2 : gosub 1175 : goto 910
 1500 rem ******************************
 1501 rem **           ln             **
 1502 rem ******************************
 1503 rem
 1505 if sv <= 0 then goto 950
 1507 sv = log (sv) : goto 910
 1550 rem ******************************
 1551 rem **          e^x             **
 1552 rem ******************************
 1553 rem
 1555 if abs (sv) > 88 then goto 950
 1557 sv = exp (sv) : return
 1600 rem ******************************
 1601 rem **          log             **
 1602 rem ******************************
 1603 rem
 1605 if sv <= 0 then goto 950
 1607 sv = log (sv) / log (10) : goto910
 1650 rem ******************************
 1651 rem **         10^x             **
 1652 rem ******************************
 1653 rem
 1655 if sv > log (m1) / log (10) or sv < -38 then goto 950
 1657 sv = 10 ^ sv : return
 1700 rem ******************************
 1701 rem **           y^x            **
 1702 rem ******************************
 1703 rem
 1705 if a$ = " " then return
 1707 if abs (n1) > 10 ^ ((log (m1) / log (10)) / abs (n2)) then goto 950
 1709 sv = n1 ^ n2 : goto 910
 1750 rem ******************************
 1751 rem **        x root y          **
 1752 rem ******************************
 1753 rem
 1755 if a$ = " " then return
 1757 if n1 < 0 or n2 = 0 then goto 950
 1759 sv = 10 ^ ((log (n1) / log (10)) / n2) : goto 910
 1800 rem ******************************
 1801 rem **       square root        **
 1802 rem ******************************
 1803 rem
 1806 if sv < 0 then goto 950
 1807 sv = sqr (sv) : goto 910
 1850 rem ******************************
 1851 rem **         cube root        **
 1852 rem ******************************
 1853 rem
 1855 if sv = 0 then return
 1857 if sv < 0 then sv = -(10^((log(abs(sv))/log(10))/3)) : return
 1859 sv = 10 ^ ((log (sv) / log (10)) / 3) : return
 1900 rem ******************************
 1901 rem **     list functions       **
 1902 rem ******************************
 1903 rem
 1905 print "{clr}{blu} KEY {blk}{SHIFT--}{blu}    FUNCTION   {blk}{SHIFT--}{blu} SECOND FUNCTION{blk}"
 1907 print "{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}";
 1910 print "{red}  f1 {blk}{SHIFT--}{blu}Inverse        {blk}{SHIFT--}"
 1912 print "{red}  f2 {blk}{SHIFT--}{blu}Natural LOG    {blk}{SHIFT--}{blu} Base e antilog"
 1914 print "{red}  f3 {blk}{SHIFT--}{blu}Sine           {blk}{SHIFT--}{blu} Inv Sine"
 1916 print "{red}  f4 {blk}{SHIFT--}{blu}Logarithm      {blk}{SHIFT--}{blu} Base 10 antilog"
 1918 print "{red}  f5 {blk}{SHIFT--}{blu}Cosine         {blk}{SHIFT--}{blu} Inv Cosine"
 1920 print "{red}  f6 {blk}{SHIFT--}{blu}Power key      {blk}{SHIFT--}{blu} Radical root"
 1922 print "{red}  f7 {blk}{SHIFT--}{blu}Tangent        {blk}{SHIFT--}{blu} Inv Tangent"
 1924 print "{red}  f8 {blk}{SHIFT--}{blu}Square Root    {blk}{SHIFT--}{blu} Cube Root"
 1926 print "{red}  ^  {blk}{SHIFT--}{blu}Square Key     {blk}{SHIFT--}{blu} Reciprocal"
 1928 print "{red}  S  {blk}{SHIFT--}{blu}Sign (+/-)     {blk}{SHIFT--}"
 1930 print "{red}  _  {blk}{SHIFT--}{blu}Deg  Rad  Grad {blk}{SHIFT--}{blu} Exponent"
 1932 print "{red}  \  {blk}{SHIFT--}{blu}Hyperbolic     {blk}{SHIFT--}{blu} Inv Hyperbolic"
 1934 print "{red}  :  {blk}{SHIFT--}{blu}>Degrees       {blk}{SHIFT--}{blu} >Deg.MinSec"
 1935 print "{red} CLR {blk}{SHIFT--}{blu}Combinations   {blk}{SHIFT--}{blu} Permutations"
 1936 print "{red}  @  {blk}{SHIFT--}{blu}Base           {blk}{SHIFT--}{blu} Fix  Sci  Eng"
 1937 print "{red}CRSR^{blk}{SHIFT--}{blu}a              {blk}{SHIFT--}{blu} >Polar Coords"
 1938 print "{red}CRSR_{blk}{SHIFT--}{blu}b              {blk}{SHIFT--}{blu} >Cartsn Coord"
 1939 print "{blk}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}";
 1940 print "{red}C {blk}= {blu}CONTINUE          {red}Q {blk}= {blu}Quit LIST"
 1942 get aa$ : if aa$ = "" then 1942
 1944 if aa$ = "c" then goto 1950
 1946 if aa$ = "q" then gosub 8000 : return
 1948 goto 1942
 1950 print "{clr}{blu} KEY {blk}{SHIFT--}{blu}    FUNCTION{blk}"
 1952 print "{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}";
 1954 print "{red}  P  {blk}{SHIFT--}{blu} Pi"
 1956 print "{red}  !  {blk}{SHIFT--}{blu} Factorial"
 1958 print "{red}  N  {blk}{SHIFT--}{blu} Random Number"
 1960 print "{red} DEL {blk}{SHIFT--}{blu} Clear Entry"
 1962 print "{red} SPC {blk}{SHIFT--}{blu} Clear"
 1964 print "{red} RET {blk}{SHIFT--}{blu} Display y coords for >xy or >r0"
 1966 print "{red}  &  {blk}{SHIFT--}{blu} Modulo"
 1968 print "{red}  M  {blk}{SHIFT--}{blu} Put in Memory"
 1970 print "{red}  R  {blk}{SHIFT--}{blu} Recall Memory"
 1972 print "{red}  X  {blk}{SHIFT--}{blu} Clear Memory"
 1974 print "{red}  T  {blk}{SHIFT--}{blu} Number of decimal places"
 1976 print "{red}  L  {blk}{SHIFT--}{blu} List functions"
 1978 print "{red}  H  {blk}{SHIFT--}{blu} Help"
 1980 print "{red}  Q  {blk}{SHIFT--}{blu} Quit"
 1982 print "{blk}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}";
 1990 print "{red}C {blk}= {blu}CONTINUE          {red}Q {blk}= {blu}Quit LIST"
 1992 get aa$ : if aa$ = "" then 1992
 1994 if aa$ = "c" then goto 1900
 1996 if aa$ = "q" then gosub 8000 : return
 1998 goto 1992
 2000 rem ******************************
 2001 rem **          help            **
 2002 rem ******************************
 2003 rem
 2005 print "{clr}{blk}Help->" : print
 2007 print "addition           equal sign           ";
 2009 print "base e antilog     exponent             ";
 2011 print "base system        factorial            ";
 2013 print "base ten antilog   fixed decimal        ";
 2015 print "binary base        f s e                ";
 2017 print "cartesian coords   grad                 ";
 2019 print "clear              help                 ";
 2021 print "clear entry        hexadecimal base     ";
 2023 print "clear memory       hyperbolic           ";
 2025 print "clock              inverse              ";
 2027 print "combination        inverse cosecant     ";
 2029 print "cosecant           inverse cosine       ";
 2031 print "cosine             inverse cotangent    ";
 2033 print "cotangent          inverse hyperbolic   ";
 2035 print "cube root          inverse secant       ";
 2037 print "decimal base       inverse sine         ";
 2039 print "degrees            inverse tangent      ";
 2041 print "division           logarithm            ";
 2043 print "d r g              memory               ";
 2045 print "engineering        modulo               ";
 2047 print "{down}{blu}next {blk}= {red}more options  {blu}exit {blk}= {red}return"
 2050 goto 2100
 2060 print "{clr}{blk}HELP->" : print
 2062 print "multiplication     random number        ";
 2064 print "natural log        recall memory        ";
 2066 print "octal base         reciprocal           ";
 2068 print "parentheses        scientific           ";
 2070 print "percent            secant               ";
 2072 print "permutation        sign change          ";
 2074 print "pi                 sine                 ";
 2076 print "polar coords       square               ";
 2078 print "power key          square root          ";
 2080 print "quit               subtraction          ";
 2082 print "radical root       time conversions     ";
 2084 print "radians            tangent              ";
 2090 print "{down}{blu}back {blk}= {red}previous    {blu}exit {blk}= {red}return"
 2100 print "{home}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{blk}"; : h$ = ""
 2102 print "{CBM-P}"; : print "{left}";
 2104 get a$ : if a$ = "" then 2104
 2106 if a$ = chr$(20) then print "{home}{rght}{rght}{rght}{rght}{rght}{rght}{rght}                        " : goto 2100
 2108 if a$ = chr$ (13) then 2120
 2109 if a$ = chr$ (32) then goto 2112
 2110 if asc(a$) < 65 or asc(a$) > 90 then goto 2104
 2112 h$ = h$ + a$ : print a$; : goto 2102
 2120 if h$ = "exit" then gosub 8000 : return
 2122 if h$ = "next" then goto 2060
 2124 if h$ = "back" then goto 2000
 2126 print "{clr}"
 2130 open 15,8,15
 2131 open 2,8,2,"0:"+h$+",s,r"
 2132 input#15,en,em$,et,es : if en > 1 then 2138
 2134 get#2,a$:su=st:input#15,en,em$,et,es: ifen>1then2138
 2136 print a$; : if su=0then goto 2134
 2138 close 2 : close 15
 2140 if su = 64 then goto 2150
 2142 d$ = "Drive Error":gosub8000:gosub700:gosub710:gosub750:return
 2150 print chr$(13);"{rvon}Hit a key to return."
 2152 get a$ : if a$ = "" then 2152
 2154 goto 2000
 2200 rem ******************************
 2201 rem **      random number       **
 2202 rem ******************************
 2203 rem
 2205 sv = rnd (0) : return
 2210 rem ******************************
 2211 rem **   set decimal places     **
 2212 rem ******************************
 2213 rem
 2215 if sv > 8 then goto 950
 2217 fp = sv : return
 2250 rem ******************************
 2251 rem **        set time          **
 2252 rem ******************************
 2253 rem
 2255 print "{clr}{down}{down}{down}{rght}{rght}{rght}{yel}Current Time -> ";
 2257 print left$ (ti$,2); ":"; mid$ (ti$,3,2); ":"; right$(ti$,2)
 2259 print "{rght}{rght}{rght}New Time (hhmmss) -> ";
 2261 print "{CBM-P}";: print "{left}";
 2263 get a$ : if a$ = "" then 2263
 2265 if a$ = chr$ (20) then t$ = "" : goto 2255
 2267 if a$ = chr$ (13) then 2275
 2269 if asc (a$) < 48 or asc (a$) > 57 then 2263
 2271 print a$;: t$ = t$ + a$ : goto2261
 2275 if len (t$) <> 6 or val (t$) > 235959 then return
 2277 ti$ = t$ : return
 2300 rem  *****************************
 2301 rem  **      exponent key       **
 2302 rem  *****************************
 2303 rem
 2305 if a$ = " " then return
 2309 if 10 > 10 ^ ((log (m1) / log (10)) / abs (n2)) then goto 950
 2311 if m1 / abs (n1) < abs (10^n2) then goto 950
 2313 sv = n1 * 10 ^ n2 : goto 910
 2350 rem ******************************
 2351 rem **       d.ms to deg        **
 2352 rem ******************************
 2353 rem
 2354 if abs (sv) >=1e+10 then goto 950
 2355 hh = int (sv) : sv = sv - hh
 2357 for i = 1 to 3
 2359 sv = sv * 100 : hh = hh + (int(sv) / 60^i) : sv = sv - int (sv) : next i
 2361 sv = hh : return
 2400 rem ******************************
 2401 rem **       deg to d.ms        **
 2402 rem ******************************
 2403 rem
 2404 if abs (sv) >=1e+10 then goto 950
 2405 hh = int (sv) : sv = sv - hh
 2407 for i = 1 to 3
 2409 sv = sv * 60 : hh = hh + (int (sv) / 100^i) : sv = sv - int (sv) : next i
 2411 sv = hh : return
 2500 rem ******************************
 2501 rem **           n-p-r          **
 2502 rem ******************************
 2503 rem
 2504 if a$ = " " then return
 2506 if n2 > 32 or n2 > n1 then goto950
 2507 n2 = n1 - n2 : sv = n1 : gosub 850 : n1 = sv
 2509 sv = n2 : gosub 850 : n2 = sv : sv = n1 / n2 : goto 910
 2550 rem ******************************
 2551 rem **           n-c-r          **
 2552 rem ******************************
 2553 rem
 2554 if a$ = " " then return
 2556 if n2 > 32 or n2 > n1 then goto950
 2557 n3 = n1 - n2 : sv = n1 : gosub 850 : n1 = sv
 2559 sv = n2 : gosub 850 : n2 = sv : sv = n3 : gosub 850 : n3 = sv
 2561 sv = n1 / (n2 * n3) : goto 910
 2600 rem ******************************
 2601 rem **        base system       **
 2602 rem ******************************
 2603 rem
 2605 if fs <> 1 then return
 2607 print "{home}{down}{down}{down}{down}{down}{down}{down}{down}{rght}{rght}{blu}{rvon}{blk}BASE"
 2608 get a$ : if a$ = "" then 2608
 2609 if a$ = "b" then bs = 1 : goto2615
 2610 if a$ = "o" then bs = 2 : goto2615
 2611 if a$ = "h" then bs = 3 : goto2615
 2612 if a$ = "d" then bs = 4 : goto2615
 2613 goto 2608
 2615 print "{home}{down}{down}{down}{down}{down}{down}{down}{down}{rght}{rght}{blu}"; bs$ (bs)
 2617 if s2 = 1 then return
 2619 gosub 900 : goto 910
 2700 rem ******************************
 2701 rem **          f-s-e           **
 2702 rem ******************************
 2703 rem
 2705 if bs <> 4 then return
 2707 fs = fs  + 1 : gosub 1150 : if fs > 3 then fs = 1
 2709 print "{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{rght}{rght}{blu}"; fs$ (fs)
 2711 if s2 = 1 then return
 2713 gosub 900 : goto 910
 2720 rem ******************************
 2721 rem **  scientific-engineering  **
 2722 rem ******************************
 2723 rem
 2725 if fs = 1 then return
 2726 rem ******************************
 2727 rem **        scientific        **
 2728 rem ******************************
 2729 if val (d$) > mx or val (d$) < mn then return
 2731 e$ = "0"
 2733 if val (d$) >= 1 and val (d$) < 10 then goto 2790
 2735 if val (d$) <= -1 and val (d$) > -10 then goto 2790
 2737 if val (d$) >= 10 or val (d$) <= -10 then goto 2743
 2739 d$ = str$ (val (d$) * 10) : e$ = str$ (val (e$) - 1) : goto 2733
 2743 d$ = str$ (val (d$) / 10) : e$ = str$ (val (e$) + 1) : goto 2733
 2790 if val (e$) >= 1 then d$ = d$ + "e+" + e$ : if fs = 3 then goto 2800
 2792 if val (e$) <=-1 then d$ = d$ + "e" + e$ : if fs = 3 then goto 2800
 2793 return
 2800 rem ******************************
 2801 rem **        engineering       **
 2802 rem ******************************
 2805 restore
 2807 read a$ : if a$ = "end" then 2820
 2809 if val (a$) = val (e$) then return
 2811 goto 2807
 2820 if val (e$) < 0 then 2830
 2822 d$ = left$ (d$,len (d$) - 4) : d$ = str$ ( val (d$) * 10)
 2823 e$ = str$ (val (e$) - 1) : d$ = d$ + "e+" + e$ : goto 2805
 2830 d$ = left$ (d$,len (d$) - 4) : d$ = str$ (val (d$) / 10)
 2832 e$ = str$ (val (e$) + 1) : d$ = d$ + "e-" + e$ : goto 2805
 2900 rem ******************************
 2901 rem **    polar to cartesian    **
 2902 rem ******************************
 2903 rem
 2904 if yy < 0 or xx < 0 then goto 950
 2905 sv = yy : gosub 1200 : if sv > -1 and sv < 1 then goto 2907
 2906 if m1 / abs(sv) < abs (xx) then goto 950
 2907 sv = xx * sv : sv$ = str$ (sv) : gosub 530
 2908 sv = yy : gosub 1300 : if sv > -1 and sv < 1 then goto 2910
 2909 if m1 / abs (sv) < abs (xx) then goto 950
 2910 sv = xx * sv : xx = 0 : yy = 1 : goto 910
 2950 rem ******************************
 2951 rem **    cartesian to polar    **
 2952 rem ******************************
 2953 rem
 2955 if xx = 0 then goto 950
 2957 sv = yy / xx : sv = atn (sv)
 2959 if dg = 1 then sv = sv * 180 / ~
 2961 if dg = 3 then sv = sv * 200 / ~
 2963 sv$ = str$ (sv) : gosub 530 : ifabs(xx)>sqr(m1)orabs(yy)>sqr (m1) then 950
 2964 if m1 - xx^2 < yy^2 then goto 950
 2965 sv = (xx^2 + yy^2) : xx = 0 : yy = 1 : goto 910
 2975 rem ******************************
 2976 rem **    polar   cartesian     **
 2977 rem ******************************
 2978 rem
 2980 gosub 900 : gosub 900 : gosub 910 : yy = 0 : return
 3000 rem ******************************
 3001 rem **          memory          **
 3002 rem ******************************
 3003 rem
 3004 c$ = a$
 3005 print "{home}{down}{down}{down}{rght}{rght}{blk}{rvon}{CBM-A}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}"
 3006 print"{rght}{rght}{rvon}{SHIFT--}{rvof}                         {rvon}{SHIFT--}"
 3007 print"{rght}{rght}{rvon}{SHIFT--}{rvof} Memory Location (1..9)? {rvon}{SHIFT--}{rvof}"
 3008 print"{rght}{rght}{rvon}{SHIFT--}{rvof}                         {rvon}{SHIFT--}"
 3009 print"{rght}{rght}{rvon}{CBM-Z}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-X}"
 3011 get a$ : if a$ = "" then 3011
 3013 if asc (a$) < 48 or asc (a$) > 57 then 3011
 3015 if c$ = "m" then gosub 3100
 3017 if c$ = "r" then gosub 3120
 3019 if c$ = "x" then gosub 3150
 3021 a$ = ""
 3025 return
 3100 rem ******************************
 3101 rem **       put in memory      **
 3102 rem ******************************
 3103 rem
 3105 gosub 900 : m$ (val (a$)) = str$ (sv) : gosub 8000 : goto 910
 3120 rem ******************************
 3121 rem **       recall memory      **
 3122 rem ******************************
 3123 rem
 3125 sv = val(m$ (val (a$))) : gosub 8000 : goto 910
 3150 rem ******************************
 3151 rem **       clear memory       **
 3152 rem ******************************
 3153 rem
 3155 m$(val(a$)) = "0." : gosub 8000 : return
 4000 rem ******************************
 4001 rem **   bin-oct-hex-dec-cplx   **
 4002 rem ******************************
 4003 rem
 4004 if bs = 4 then return
 4005 if val(d$)>mx or val(d$)<mn or (val(d$)>-1 and val(d$)<1)then er=1:return
 4006 if bs = 3 and (val(d$)>268435455orval(d$)<-268435455)then goto 950
 4007 if bs = 2 and (val(d$) > 16777215 or val(d$) < -16777215) then goto 950
 4008 if bs = 1 and (val(d$) > 255 or val (d$) < -255) then goto 950
 4009 if val (d$) < 0 then gosub 4020 : sv = val (d$)
 4010 n1 = sv :  n2 = sb(bs) : te$ = ""
 4012 n3 = int(n1/n2) : gosub1025 : if bs=3 and sv>9 then gosub4050 : goto 4016
 4014 te$ = right$ (str$ (sv), len (str$ (sv)) - 1) + te$
 4016 if n3 = 0 then d$ = " " + te$ : goto 4030
 4018 n1 = n3 : goto 4012
 4020 ls = 1
 4022 if bs = 1 then d$ = str$ (255-abs(val(d$))+1) : return
 4024 if bs = 2 then d$ = str$ (16777215-abs(val(d$))+1) : return
 4026 if bs = 3 then d$ = str$ (268435455-abs(val(d$))+1) : return
 4028 return
 4030 if ls = 0 then return
 4032 ls = 0
 4033 if bs = 3 and len (d$) = 8 then d$ = " f" + right$(d$,len(d$)-1):goto4035
 4034 if len (d$)<9 then d$ = " 0" + right$(d$,len(d$)-1):goto4033
 4035 if bs = 1 then d$=" 1"+right$(d$,len(d$)-1):return
 4036 if bs = 2 then d$ = " 7" + right$(d$,len(d$)-1) : return
 4038 if bs = 3 then d$ = " f" + right$(d$,len(d$)-1) : return
 4040 return
 4050 if sv = 10 then te$ = "a" + te$ : return
 4052 if sv = 11 then te$ = "b" + te$ : return
 4054 if sv = 12 then te$ = "c" + te$ : return
 4056 if sv = 13 then te$ = "d" + te$ : return
 4058 if sv = 14 then te$ = "e" + te$ : return
 4060 if sv = 15 then te$ = "f" + te$ : return
 4062 return
 8000 rem ******************************
 8001 rem **          screen          **
 8002 rem ******************************
 8003 rem
 8005 gosub 9100
 8007 poke 53281, 3 : poke 53280, 6
 8010 print"{clr}{down}{blk}  {CBM-A}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-R}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}"
 8012 print"  {SHIFT--}          {red}0.{blk}{SHIFT--}   {SHIFT--}"
 8014 print"  {CBM-Z}{SHIFT-*}{SHIFT-*}{CBM-E}{CBM-R}{SHIFT-*}{CBM-R}{SHIFT-*}{CBM-R}{SHIFT-*}{CBM-R}{SHIFT-*}{CBM-R}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-X}  {red}f1 {blk}= {blu}Inverse{blk}"
 8016 print"      {SHIFT--}{red}7{blk}{SHIFT--}{red}8{blk}{SHIFT--}{red}9{blk}{SHIFT--}{red}/{blk}{SHIFT--}       {red}f3 {blk}= {blu}Sin{blk}"
 8018 print"      {CBM-Q}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{CBM-W}       {red}f5 {blk}= {blu}Cos{blk}"
 8020 print"      {SHIFT--}{red}4{blk}{SHIFT--}{red}5{blk}{SHIFT--}{red}6{blk}{SHIFT--}{red}*{blk}{SHIFT--}       {red}f7 {blk}= {blu}Tan{blk}"
 8022 print"  {blu}DEG{blk} {CBM-Q}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{CBM-W}       {red}f2 {blk}= {blu}ln {blk}"
 8024 print"  {blu}DEC{blk} {SHIFT--}{red}1{blk}{SHIFT--}{red}2{blk}{SHIFT--}{red}3{blk}{SHIFT--}{red}-{blk}{SHIFT--}       {red}f4 {blk}= {blu}log{blk}"
 8026 print"  {blu}FIX{blk} {CBM-Q}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{CBM-W}       {red}f6 {blk}= {blu}y^x{blk}"
 8028 print"      {SHIFT--}{red}0{blk}{SHIFT--}{red}.{blk}{SHIFT--}{red}={blk}{SHIFT--}{red}+{blk}{SHIFT--}       {red}f8 {blk}= {blu}Sqrt{blk}"
 8030 print"      {CBM-Z}{SHIFT-*}{CBM-E}{SHIFT-*}{CBM-E}{SHIFT-*}{CBM-E}{SHIFT-*}{CBM-X}
 8032 print"{down}  {rvon}{gry1}{CBM-A}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-R}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-R}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}"
 8034 print"  {rvon}{SHIFT--}{rvof} {red}^ {blk}= {blu}x^2 {rvon}{gry1}{SHIFT--}{rvof} {red}DEL {blk}= {blu}CE {gry1}   {rvon}{SHIFT--}{rvof} {red}M {blk}= {blu}M+{gry1}  {rvon}{SHIFT--}"
 8036 print"  {rvon}{SHIFT--}{rvof} {red}S {blk}= {blu}+/- {rvon}{gry1}{SHIFT--}{rvof} {red}SPC {blk}= {blu}CLEAR {gry1}{rvon}{SHIFT--}{rvof} {red}R {blk}= {blu}RM  {rvon}{gry1}{SHIFT--}"
 8038 print"  {rvon}{SHIFT--}{rvof} {red}_ {blk}= {blu}DRG {rvon}{gry1}{SHIFT--}{rvof} {red}CLR {blk}= {blu}nCr   {rvon}{gry1}{SHIFT--}{rvof} {red}X {blk}= {blu}CM  {rvon}{gry1}{SHIFT--}"
 8040 print"  {rvon}{SHIFT--}{rvof} {red}\ {blk}= {blu}hyp {rvon}{gry1}{SHIFT--}{rvof} {red}CR^ {blk}= {blu}>r0   {rvon}{gry1}{SHIFT--}{rvof} {red}@ {blk}= {blu}base{rvon}{gry1}{SHIFT--}"
 8042 print"  {rvon}{SHIFT--}{rvof} {red}P {blk}= {blu}pi  {rvon}{gry1}{SHIFT--}{rvof} {red}CR_ {blk}= {blu}>xy   {rvon}{gry1}{SHIFT--}{rvof} {red}& {blk}= {blu}mod {rvon}{gry1}{SHIFT--}"
 8044 print"  {rvon}{SHIFT--}{rvof} {red}! {blk}= {blu}fac {rvon}{gry1}{SHIFT--}{rvof} {red} :  {blk}= {blu}>deg  {rvon}{gry1}{SHIFT--}{rvof} {red}T {blk}= {blu}fix {rvon}{gry1}{SHIFT--}"
 8046 print"  {rvon}{SHIFT--}{rvof} {red}N {blk}= {blu}rnd {rvon}{gry1}{SHIFT--}{rvof} {red} L  {blk}= {blu}Funcs {rvon}{gry1}{SHIFT--}{rvof}         {rvon}{gry1}{SHIFT--}"
 8048 print"  {rvon}{CBM-Z}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-X}"
 8054 print"{down}      {red}H{blk}-{blu}Help   {red}Q{blk}-{blu}Quit{blk}"
 8055 print "{home}{rght}{rght}{rght}{blu}CALCULATOR"
 8060 return
 9000 rem ******************************
 9001 rem **          title           **
 9002 rem ******************************
 9003 rem
 9005 poke 53281, 0 : poke 53280, 0
 9008 print "{clr}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{gry3}  {CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}  ";
 9010 print "  {gry2}{rvon}                                    "
 9012 print "  {rvon}         CALCULATOR         "
 9014 print "  {rvon}   Paul Walters  (C) 1989   "
 9022 print "  {rvon}                                    "
 9024 print "  {rvon}{gry1}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{rvof}  ";
 9050 print"{down}{orng}           {CBM-A}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}"
 9052 print"           {SHIFT--}   {blu}CALCULATOR  {orng}{SHIFT--}"
 9054 print"           {CBM-Z}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-R}{SHIFT-*}{CBM-R}{SHIFT-*}{CBM-R}{SHIFT-*}{CBM-R}{SHIFT-*}{CBM-R}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-X}"
 9056 print"               {SHIFT--}{wht}7{orng}{SHIFT--}{wht}8{orng}{SHIFT--}{wht}9{orng}{SHIFT--}{wht}/{orng}{SHIFT--}"
 9058 print"               {CBM-Q}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{CBM-W}"
 9060 print"               {SHIFT--}{wht}4{orng}{SHIFT--}{wht}5{orng}{SHIFT--}{wht}6{orng}{SHIFT--}{wht}*{orng}{SHIFT--}"
 9062 print"               {CBM-Q}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{CBM-W}"
 9064 print"               {SHIFT--}{wht}1{orng}{SHIFT--}{wht}2{orng}{SHIFT--}{wht}3{orng}{SHIFT--}{wht}-{orng}{SHIFT--}"
 9066 print"               {CBM-Q}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-+}{SHIFT-*}{CBM-W}"
 9068 print"               {SHIFT--}{wht}0{orng}{SHIFT--}{wht}.{orng}{SHIFT--}{wht}={orng}{SHIFT--}{wht}+{orng}{SHIFT--}"
 9070 print"               {CBM-Z}{SHIFT-*}{CBM-E}{SHIFT-*}{CBM-E}{SHIFT-*}{CBM-E}{SHIFT-*}{CBM-X}"
 9072 print"{down}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{grn}HIT{$a0}A{$a0}KEY{$a0}TO{$a0}BEGIN"
 9074 get a$ : if a$ = "" then 9074
 9076 return
 9100 rem ******************************
 9102 rem **         set up           **
 9103 rem ******************************
 9104 rem
 9105 bs$(1)="BIN ":bs$(2)="OCT ":bs$(3)="HEX ":bs$(4)="DEC ":bs=4
 9106 sb(1)=2:sb(2)=8:sb(3)=16:sb(4)=10
 9107 fs$(1)="FIX":fs$(2)="SCI":fs$(3)="ENG":fs=1
 9109 dg=1:dg$(1)="DEG ":dg$(2)="RAD":dg$(3)="GRAD"
 9110 if dm = 0 then dim s1$(50) : dim s2$ (50) : dm = 1
 9112 s1 = 1 : s2 = 1 : fp = 8 : dp = 0 : ds = 0 : mx = 999999999
 9113 mn = -999999999 : m1 = 1.7e+38
 9115 sf$ (0) = "   "  : sf$ (1) = "INV" : sf = 0 : hp$ (0) = "   "
 9116 hp$ (1) = "HYP" : hp = 0
 9120 return
 9500 data "-36", "-33", "-30", "-27", "-24", "-21", "-18", "-15", "-12", "-9"
 9502 data "-6", "-3", "0", "3", "6", "9", "12", "15", "18", "21", "24", "27"
 9504 data "30", "33", "36", "end"
