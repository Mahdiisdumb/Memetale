.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner_o
pushi.e 65
pop.v.i self.selected
push.s ""@36
pop.v.s self.charname
pushi.e 3
pop.v.i self.naming
pushi.e 0
pop.v.i self.selected2
pushi.e 0
pop.v.i self.selected3
pushi.e 0
pop.v.i self.q
pushi.e 0
pop.v.i global.to_joyconfig
push.s ""@36
pop.v.s self.name
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
pop.v.v self.iniread
push.s "General"@3071
conv.s.v
call.i ini_section_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.s ""@36
conv.s.v
push.s "Name"@3378
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.name
pushi.e 0
conv.i.v
push.s "Love"@3380
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.love
pushi.e 0
conv.i.v
push.s "Time"@3381
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.time
pushi.e 0
conv.i.v
push.s "Kills"@3382
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.kills
pushi.e 0
conv.i.v
push.s "Room"@3383
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.roome

:[2]
pushi.e 0
pop.v.i self.hasname
push.v self.name
push.s ""@36
cmp.s.v NEQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.hasname

:[4]
push.v self.hasname
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.name
pop.v.v global.charname

:[6]
call.i ossafe_ini_close(argc=0)
popz.v
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
pop.v.v self.m2
pushi.e 0
conv.i.v
push.s "TK"@47563
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.m3
pushi.e 0
conv.i.v
push.s "TS"@47565
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.m4
pushi.e 0
conv.i.v
push.s "PD"@47567
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.pd
pushi.e 0
conv.i.v
push.s "UD"@47569
conv.s.v
push.s "Undyne"@6863
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ud
pushi.e 0
conv.i.v
push.s "AD"@47571
conv.s.v
push.s "Alphys"@47572
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ad
pushi.e 0
conv.i.v
push.s "F7"@47574
conv.s.v
push.s "F7"@47574
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.fd
pushi.e 0
conv.i.v
push.s "K"@47576
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.fk
pushi.e 0
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.truereset
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 0
pop.v.i self.mlevel
push.v self.m2
pushi.e 0
cmp.i.v GT
bf [31]

:[7]
push.v self.m2
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushi.e 1
pop.v.i self.mlevel

:[9]
push.v self.m4
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
pushi.e 2
pop.v.i self.mlevel

:[11]
push.v self.pd
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.mlevel
pushi.e 2
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 3
pop.v.i self.mlevel

:[16]
push.v self.ud
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.mlevel
pushi.e 3
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 4
pop.v.i self.mlevel

:[21]
push.v self.ad
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.mlevel
pushi.e 4
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 5
pop.v.i self.mlevel

:[26]
push.v self.fd
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
push.v self.mlevel
pushi.e 5
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 6
pop.v.i self.mlevel

:[31]
push.v self.truereset
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
pushi.e 7
pop.v.i self.mlevel

:[33]
push.v self.mlevel
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushi.e 220
pop.v.i self.menusong

:[35]
push.v self.mlevel
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 221
pop.v.i self.menusong

:[37]
push.v self.mlevel
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
pushi.e 222
pop.v.i self.menusong

:[39]
push.v self.mlevel
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
pushi.e 223
pop.v.i self.menusong

:[41]
push.v self.mlevel
pushi.e 4
cmp.i.v EQ
bf [43]

:[42]
pushi.e 224
pop.v.i self.menusong

:[43]
push.v self.mlevel
pushi.e 5
cmp.i.v EQ
bf [45]

:[44]
pushi.e 225
pop.v.i self.menusong

:[45]
push.v self.mlevel
pushi.e 6
cmp.i.v EQ
bf [47]

:[46]
pushi.e 226
pop.v.i self.menusong

:[47]
push.v self.mlevel
pushi.e 7
cmp.i.v EQ
bf [49]

:[48]
pushi.e 220
pop.v.i self.menusong

:[49]
push.v self.mlevel
pushi.e 0
cmp.i.v GTE
bf [51]

:[50]
push.v self.mlevel
pushi.e 6
cmp.i.v LTE
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
push.v self.menusong
call.i caster_loop(argc=3)
popz.v

:[54]
push.v self.mlevel
pushi.e 7
cmp.i.v EQ
bf [56]

:[55]
push.d 0.1
conv.d.v
push.d 0.1
conv.d.v
push.v self.menusong
call.i caster_loop(argc=3)
popz.v

:[56]
pushi.e 57
conv.i.v
call.i script_execute(argc=1)
popz.v
pushglb.v global.osflavor
pushi.e 3
cmp.i.v GTE
bf [58]

:[57]
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [end]

:[60]
call.i ossafe_savedata_save(argc=0)
popz.v

:[end]