.localvar 0 arguments

:[0]
pushi.e 181
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 80
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.v self.ll
pushi.e 2
cmp.i.v GT
bf [5]

:[1]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [3]

:[2]
call.i game_end(argc=0)
popz.v
b [4]

:[3]
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
pop.v.i self.force_black_screen
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
b [end]

:[5]
pushi.e 1
conv.i.v
push.d 0.45
conv.d.v
push.v self.gmusic
call.i caster_loop(argc=3)
pop.v.v self.gm1
push.d 0.25
conv.d.v
push.v self.gm1
call.i caster_set_panning(argc=2)
popz.v
pushi.e 1
conv.i.v
push.d 0.45
conv.d.v
push.v self.gmusic
call.i caster_loop(argc=3)
pop.v.v self.gm2
push.d 0.5
conv.d.v
push.v self.gm2
call.i caster_set_panning(argc=2)
popz.v
pushi.e 1
conv.i.v
push.d 0.45
conv.d.v
push.v self.gmusic
call.i caster_loop(argc=3)
pop.v.v self.gm3
push.d 0.75
conv.d.v
push.v self.gm3
call.i caster_set_panning(argc=2)
popz.v

:[end]