.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.size
pushi.e 0
pop.v.i self.angle
push.d 0.1
pop.v.d self.friction
pushi.e 0
pop.v.i self.bonk
pushi.e 0
pop.v.i self.falling
pushi.e 0
pop.v.i self.specialy
pushi.e 0
pop.v.i self.golf
pushi.e 0
pop.v.i self.t
pushi.e 30
pop.v.i self.shrinko
pushi.e 0
pop.v.i self.rolltime
pushi.e 0
pop.v.i self.timeincrease
pushi.e 0
pop.v.i self.murder
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 16
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.murder

:[2]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]