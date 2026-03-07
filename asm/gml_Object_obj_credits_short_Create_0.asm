.localvar 0 arguments

:[0]
pushi.e -1
pop.v.i self.number
push.s "music/intronoise.ogg"@2623
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.ii
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ii
call.i caster_play(argc=3)
popz.v
pushi.e 150
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.rot
pushi.e 0
pop.v.i self.phonecalls
pushi.e 0
pop.v.i global.filechoice
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "E"@47762
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "F"@47599
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Won"@3070
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.won
push.v self.won
pushi.e 1
add.i.v
push.s "Won"@3070
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[end]