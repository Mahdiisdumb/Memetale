.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
call.i scr_depth(argc=0)
popz.v
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/dogroom.ogg"@2823
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.d 0.1
pop.v.d self.image_speed

:[end]