.localvar 0 arguments

:[0]
pushi.e 19
pop.v.i global.myfight
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pushi.e -5
pushi.e 67
pop.v.i [array]global.flag
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 67
pop.v.i [array]global.flag

:[2]
pushi.e 45
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
pushi.e 100
pop.v.i global.plot
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v

:[end]