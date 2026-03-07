.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i global.interact
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.touched
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 13
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.touched

:[2]
pushi.e -5
pushi.e 89
push.v [array]global.flag
pushi.e 1
cmp.i.v LT
bf [end]

:[3]
pushi.e 1
pushi.e -5
pushi.e 89
pop.v.i [array]global.flag

:[end]