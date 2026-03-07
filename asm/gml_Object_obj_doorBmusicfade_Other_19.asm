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
pushi.e 1
pop.v.i self.ok
pushbltn.v self.room
pushi.e 137
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1120
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.ok

:[5]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
push.v self.ok
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[8]
push.v self.touched
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 13
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.touched

:[10]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[11]
pushbltn.v self.room
pushi.e 32
cmp.i.v EQ
bf [end]

:[12]
pushglb.v global.currentsong2
call.i caster_free(argc=1)
popz.v

:[end]