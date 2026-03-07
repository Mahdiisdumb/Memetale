.localvar 0 arguments

:[0]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
pop.v.v self.iniwrite
pushi.e 0
conv.i.v
push.s "Gameover"@5090
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.gs
push.v self.gs
pushi.e 1
add.i.v
push.s "Gameover"@5090
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
push.v self.gs
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.msgnum

:[2]
push.v self.gs
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushglb.v global.kills
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 100
pushi.e 8
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.msgnum

:[7]
push.v self.gs
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushi.e 200
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.msgnum

:[9]
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 300
pop.v.i self.msgnum

:[11]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]