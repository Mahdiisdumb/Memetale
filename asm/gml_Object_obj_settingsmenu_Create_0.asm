.localvar 0 arguments
.localvar 1 i 1332
.localvar 2 Won 1333
.localvar 3 CP 1334
.localvar 4 CH 1335
.localvar 5 BW 1336
.localvar 6 BP 1337
.localvar 7 BH 1338
.localvar 8 EndF 1339

:[0]
pushglb.v global.to_joyconfig
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.i global.to_joyconfig
pushi.e 102
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 10
pop.v.i self.num_borders
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.border_enabled
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.border_enabled
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.border_enabled
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.border_enabled
pushi.e 4
pop.v.i local.i

:[3]
pushloc.v local.i
push.v self.num_borders
cmp.v.v LTE
bf [5]

:[4]
pushi.e 0
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.i [array]self.border_enabled
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[5]
pushi.e 0
pop.v.i self.fun
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [33]

:[6]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [32]

:[7]
pushi.e 1
pop.v.i self.fun
pushi.e 0
conv.i.v
push.s "Won"@3070
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.Won
pushi.e 0
conv.i.v
push.s "CP"@3072
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.CP
pushi.e 0
conv.i.v
push.s "CH"@3073
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.CH
pushi.e 0
conv.i.v
push.s "BW"@3076
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.BW
pushi.e 0
conv.i.v
push.s "BP"@3077
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.BP
pushi.e 0
conv.i.v
push.s "BH"@3078
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.BH
pushi.e 0
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.EndF
pushloc.v local.Won
conv.v.b
bt [9]

:[8]
pushloc.v local.BW
conv.v.b
b [10]

:[9]
push.e 1

:[10]
bt [15]

:[11]
pushloc.v local.CP
conv.v.b
bt [13]

:[12]
pushloc.v local.BP
conv.v.b
b [14]

:[13]
push.e 1

:[14]
b [16]

:[15]
push.e 1

:[16]
bf [20]

:[17]
pushi.e 4
pop.v.i local.i

:[18]
pushloc.v local.i
pushi.e 8
cmp.i.v LTE
bf [20]

:[19]
pushi.e 1
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.i [array]self.border_enabled
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [18]

:[20]
pushloc.v local.CP
conv.v.b
bt [22]

:[21]
pushloc.v local.BP
conv.v.b
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
pushi.e 1
pushi.e -1
pushi.e 9
pop.v.i [array]self.border_enabled

:[25]
pushloc.v local.CH
conv.v.b
bt [27]

:[26]
pushloc.v local.BH
conv.v.b
b [28]

:[27]
push.e 1

:[28]
bf [30]

:[29]
pushi.e 1
pushi.e -1
pushi.e 10
pop.v.i [array]self.border_enabled

:[30]
pushloc.v local.EndF
pushi.e 2
cmp.i.v GTE
bf [32]

:[31]
pushi.e 0
pop.v.i self.fun

:[32]
call.i ossafe_ini_close(argc=0)
popz.v

:[33]
pushi.e 0
pop.v.i self.menu
pushi.e 0
pop.v.i self.menu_engage
pushi.e 5
pop.v.i self.buffer
push.i 32769
pushi.e -1
pushi.e 0
pop.v.i [array]self.button_list
push.i 32770
pushi.e -1
pushi.e 1
pop.v.i [array]self.button_list
push.i 32771
pushi.e -1
pushi.e 2
pop.v.i [array]self.button_list
push.i 32772
pushi.e -1
pushi.e 3
pop.v.i [array]self.button_list
push.i 32773
pushi.e -1
pushi.e 4
pop.v.i [array]self.button_list
push.i 32775
pushi.e -1
pushi.e 5
pop.v.i [array]self.button_list
push.i 32774
pushi.e -1
pushi.e 6
pop.v.i [array]self.button_list
push.i 32776
pushi.e -1
pushi.e 7
pop.v.i [array]self.button_list
push.i 32779
pushi.e -1
pushi.e 8
pop.v.i [array]self.button_list
push.i 32780
pushi.e -1
pushi.e 9
pop.v.i [array]self.button_list
push.i 32777
pushi.e -1
pushi.e 10
pop.v.i [array]self.button_list
push.i 32778
pushi.e -1
pushi.e 11
pop.v.i [array]self.button_list
pushi.e -4
pushi.e -1
pushi.e 12
pop.v.i [array]self.button_list
push.s "joyconfig_resetted"@31696
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.r_line
pushi.e 0
pop.v.i self.o_o
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.r_buffer
pushi.e 0
pop.v.i self.intro
pushi.e 0
pop.v.i self.weather
pushi.e 0
pop.v.i self.rectile
pushi.e 0
pop.v.i self.extreme
pushi.e 0
pop.v.i self.extreme2
pushi.e 0
pop.v.i self.harp
pushi.e 0
pop.v.i self.weathermusic
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [58]

:[34]
pushi.e 1
pop.v.i self.intro
pushi.e -1
pop.v.i self.menu_engage
pushi.e 1
pop.v.i self.weather
pushbltn.v self.current_month
pop.v.v self.month
push.v self.month
pushi.e 12
cmp.i.v EQ
bt [37]

:[35]
push.v self.month
pushi.e 1
cmp.i.v EQ
bt [37]

:[36]
push.v self.month
pushi.e 2
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
pushi.e 1
pop.v.i self.weather

:[40]
push.v self.month
pushi.e 3
cmp.i.v EQ
bt [43]

:[41]
push.v self.month
pushi.e 4
cmp.i.v EQ
bt [43]

:[42]
push.v self.month
pushi.e 5
cmp.i.v EQ
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
pushi.e 2
pop.v.i self.weather

:[46]
push.v self.month
pushi.e 6
cmp.i.v EQ
bt [49]

:[47]
push.v self.month
pushi.e 7
cmp.i.v EQ
bt [49]

:[48]
push.v self.month
pushi.e 8
cmp.i.v EQ
b [50]

:[49]
push.e 1

:[50]
bf [52]

:[51]
pushi.e 3
pop.v.i self.weather

:[52]
push.v self.month
pushi.e 9
cmp.i.v EQ
bt [55]

:[53]
push.v self.month
pushi.e 10
cmp.i.v EQ
bt [55]

:[54]
push.v self.month
pushi.e 11
cmp.i.v EQ
b [56]

:[55]
push.e 1

:[56]
bf [58]

:[57]
pushi.e 4
pop.v.i self.weather

:[58]
pushi.e 0
pop.v.i self.finish

:[end]