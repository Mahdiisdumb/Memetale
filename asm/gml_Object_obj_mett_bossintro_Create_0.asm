.localvar 0 arguments

:[0]
pushi.e 409
conv.i.v
pushi.e 116
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i 409.myblend
pushi.e 0
pop.v.i 409.myalpha
pushi.e 0
pop.v.i 409.sineron
pushi.e -1000
pop.v.i 409.depth
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.cloud
pushi.e 0
pop.v.i self.cltimer
pushi.e 0
pop.v.i self.otr
pushi.e 0
pop.v.i self.flasher
pushi.e 0
pop.v.i self.flashamt
pushi.e 1
pop.v.i self.blacker
push.s "music/mettaton_ex.ogg"@2867
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.batmusic
push.s "music/mettaton_pretransform.ogg"@2868
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.presong
push.s "music/create.ogg"@2708
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.flashsound
pushi.e 200
pop.v.i self.x

:[end]