.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i global.interact
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
pushi.e 14
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.touched

:[2]
pushbltn.v self.room
pushi.e 76
cmp.i.v EQ
bf [end]

:[3]
pushi.e -5
pushi.e 497
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]