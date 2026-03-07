.localvar 0 arguments

:[0]
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.con
pushi.e -1
pop.v.i self.flowey
pushi.e 60
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.fimg
pushi.e 0
pop.v.i global.inbattle
pushi.e 0
pop.v.i global.faceemotion
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
push.s "CHARA"@3413
conv.s.v
push.s "Name"@3378
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.chara
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v

:[end]