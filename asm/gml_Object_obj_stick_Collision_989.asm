.localvar 0 arguments

:[0]
push.v self.broken
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 275
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1
pop.v.i self.broken
pushi.e 1
pop.v.i self.image_index
pushi.e 2
pushi.e -5
pushi.e 47
pop.v.i [array]global.flag
pushi.e -5
pushi.e 275
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
bf [6]

:[5]
pushi.e 1
pushi.e -5
pushi.e 275
pop.v.i [array]global.flag

:[6]
push.d -0.8
conv.d.v
push.v self.snap
call.i caster_set_panning(argc=2)
popz.v
push.d 0.9
conv.d.v
pushi.e 1
conv.i.v
push.v self.snap
call.i caster_play(argc=3)
popz.v
pushi.e 80
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]