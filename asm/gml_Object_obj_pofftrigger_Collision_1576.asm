.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 64
cmp.i.v LT
bf [2]

:[1]
push.v self.t
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.t
pushi.e 1
pop.v.i global.interact
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.fader
push.d 0.01
push.v self.fader
conv.v.i
pop.v.d [stacktop]self.fadespeed

:[end]