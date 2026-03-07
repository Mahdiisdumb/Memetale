.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i global.interact
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushglb.v global.kills
pushi.e -5
pushi.e 201
pop.v.v [array]global.flag
pushi.e 0
pop.v.i self.heartdraw
pushi.e 0
pop.v.i self.on
pushi.e 0
pop.v.i self.clap
pushi.e -600
pop.v.i self.depp
pushi.e 2
pop.v.i self.claptimer
pushi.e -5
pushi.e 15
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v

:[2]
pushi.e 147
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tb

:[end]