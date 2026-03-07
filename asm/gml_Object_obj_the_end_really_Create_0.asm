.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.death
push.s "system_information_963"@3403
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.death

:[2]
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.dogamt
pushi.e -5
pushi.e 512
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.type

:[4]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.s "music/intronoise.ogg"@2623
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.noise

:[6]
push.s "music/musicbox.ogg"@2648
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.song
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.photo_alpha
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.curf
push.v self.curf
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_write_real(argc=3)
popz.v

:[8]
pushi.e 1
conv.i.v
push.s "CP"@3072
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.curf
pushi.e 0
cmp.i.v EQ
bf [end]

:[9]
call.i ossafe_savedata_save(argc=0)
popz.v

:[end]