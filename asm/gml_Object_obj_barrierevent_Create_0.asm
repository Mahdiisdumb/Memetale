.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 1324
conv.i.v
pushi.e 145
conv.i.v
pushi.e 130
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.asg
pushi.e 1
pop.v.i global.interact
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/barrier.ogg"@2873
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e -5
pushi.e 10
push.v [array]global.tempvalue
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 10
pop.v.i self.con

:[2]
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v

:[end]